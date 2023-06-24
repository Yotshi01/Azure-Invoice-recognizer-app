from flask import Flask, render_template, request, session, send_file, jsonify
from flask_mysqldb import MySQL
from azure.ai.formrecognizer import DocumentAnalysisClient
from azure.core.credentials import AzureKeyCredential
import json
from io import BytesIO

endpoint = "https://test-01.cognitiveservices.azure.com/"
key = "d661045ec042469c84d537932e90a7f5"

def format_bounding_region(bounding_regions):
    if not bounding_regions:
        return "N/A"
    return ", ".join("Page #{}: {}".format(region.page_number, format_polygon(region.polygon)) for region in bounding_regions)

def format_polygon(polygon):
    if not polygon:
        return "N/A"
    return ", ".join(["[{}, {}]".format(p.x, p.y) for p in polygon])
 
app = Flask(__name__)
app.secret_key = '1234567'

app.config['MYSQL_HOST'] = '127.0.0.1'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'invoice_data'
mysql = MySQL(app)

def analyze_invoice(invoiceUrl):
    # invoiceUrl = "https://raw.githubusercontent.com/Azure-Samples/cognitive-services-REST-api-samples/master/curl/form-recognizer/sample-invoice.pdf"
    # invoiceUrl= "https://scan.doctechno.in/uploads/35/2023/invoice/1680340135.pdf"
    document_analysis_client = DocumentAnalysisClient(
        endpoint=endpoint, credential=AzureKeyCredential(key)
    )
    poller = document_analysis_client.begin_analyze_document_from_url(
            "prebuilt-invoice", invoiceUrl)
    invoices = poller.result()
    invoice_data = {}

    cursor = mysql.connection.cursor()

    for idx, invoice in enumerate(invoices.documents):
        print("--------Recognizing invoice #{}--------".format(idx + 1))

        print("Making data dictionary")

        vendor_name = invoice.fields.get("VendorName")
        vendor_address = invoice.fields.get("VendorAddress")
        customer_name = invoice.fields.get("CustomerName")
        customer_address = invoice.fields.get("CustomerAddress")			        	
        invoice_number = invoice.fields.get("InvoiceNumber")
        invoice_date = invoice.fields.get("InvoiceDate")
        payment_term = invoice.fields.get("PaymentTerm")
        purchase_order = invoice.fields.get("PurchaseOrder")
        total_amount= invoice.fields.get("InvoiceTotal")
        previous_unpaid_balance = invoice.fields.get("PreviousUnpaidBalance")
        total_discount = invoice.fields.get("TotalDiscount")
        shipping_address = invoice.fields.get("ShippingAddress")
        sub_total = invoice.fields.get("SubTotal")
        total_tax = invoice.fields.get("TotalTax")
        tax_items = invoice.fields.get("TaxItems")

        invoice_data["VendorName"] = vendor_name.value if vendor_name else None
        invoice_data["VendorAddress"] = vendor_address.value.to_dict() if vendor_address else None
        invoice_data["CustomerName"] = customer_name.value if customer_name else None
        invoice_data["CustomerAddress"] = customer_address.value.to_dict() if customer_address else None
        invoice_data["InvoiceNumber"] = invoice_number.value if invoice_number else None
        invoice_data["InvoiceDate"] = invoice_date.value if invoice_date else None
        invoice_data["PaymentTerm"] = payment_term.value if payment_term else None
        invoice_data["PurchaseOrder"] = purchase_order.value if purchase_order else None
        invoice_data["InvoiceTotal"] = total_amount.value.amount if total_amount is not None else None
        invoice_data["PreviousUnpaidBalance"] = previous_unpaid_balance.value.amount if previous_unpaid_balance is not None else None
        invoice_data["TotalDiscount"] = total_discount.value.amount if total_discount is not None else None
        invoice_data["ShippingAddress"] = shipping_address.value.to_dict() if shipping_address else None
        invoice_data["SubTotal"] = sub_total.value.amount if sub_total is not None else None
        invoice_data["TotalTax"] = total_tax.value.amount if total_tax is not None else None
        invoice_data["TaxItems"] = tax_items.value if tax_items else None
        
        print("Making item dictionary list loop")

        invoice_items = []
        for idx, item in enumerate(invoice.fields.get("Items").value):
            # item_name = invoice.fields.get("Items").value
            item_description = item.value.get("Description")
            item_quantity = item.value.get("Quantity")
            unit = item.value.get("Unit")
            unit_price = item.value.get("UnitPrice")
            product_code = item.value.get("PrductCode")
            amount = item.value.get("Amount")

            item_data = {
                # "ItemName": item_name.value if item_name else None,
                "Description": item_description.value if item_description else None,
                "Quantity": item_quantity.value if item_quantity else None,
                "Unit": unit.value if unit else None,
                "UnitPrice": unit_price.value.amount if unit_price else None,
                "ProductCode": product_code.value if product_code else None,
                "Amount": amount.value.amount if amount else None
            }
            invoice_items.append(item_data)

    # cursor.close()
    # connection.close()

    print(invoice_data)
    print("                                                              ")
    print(invoice_items)

    # Convert the vendor address dictionary to a string
    vendor_address_dict = invoice_data["VendorAddress"]
    vendor_address = ", ".join(f"{key}: {value}" for key, value in vendor_address_dict.items()) if vendor_address_dict is not None else None
    invoice_data["VendorAddress"] = vendor_address

    # Convert the customer address dictionary to a string
    customer_address_dict = invoice_data["CustomerAddress"]
    customer_address = ", ".join(f"{key}: {value}" for key, value in customer_address_dict.items()) if customer_address_dict is not None else None
    invoice_data["CustomerAddress"] = customer_address

    # Convert the shipping address dictionary to a string
    shipping_address_dict = invoice_data["ShippingAddress"]
    shipping_address = ", ".join(f"{key}: {value}" for key, value in shipping_address_dict.items()) if shipping_address_dict is not None else None
    invoice_data["ShippingAddress"] = shipping_address

    invoice_data["Items"] = invoice_items

    insert_query = "INSERT INTO invoice (VendorName, VendorAddress, CustomerName, CustomerAddress, InvoiceNumber, InvoiceDate, PaymentTerm, PurchaseOrder, TotalAmount, PreviousUnpaidBalance, TaxItems, TotalDiscount, ShippingAddress, Subtotal, TotalTax) VALUES ( %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)" 
    data = ( invoice_data["VendorName"], vendor_address, invoice_data["CustomerName"], customer_address, invoice_data["InvoiceNumber"], invoice_data["InvoiceDate"], invoice_data["PaymentTerm"], invoice_data["PurchaseOrder"], invoice_data["InvoiceTotal"], invoice_data["PreviousUnpaidBalance"], invoice_data["TotalDiscount"], shipping_address, invoice_data["SubTotal"], invoice_data["TotalTax"], invoice_data["TaxItems"])
    cursor.execute(insert_query, data)
    mysql.connection.commit()

    select_query = "SELECT Id FROM invoice ORDER BY id DESC LIMIT 1;"
    cursor.execute(select_query)
    result = cursor.fetchone()
    i = ''.join(str(x) for x in result)
    print(i)

    for idx, item in enumerate(invoice_items):
        invoice_number_of_subtable = invoice_data["InvoiceNumber"]
        item_description = item.get("Description")
        item_quantity = item.get("Quantity")
        unit = item.get("Unit")
        unit_price = item.get("UnitPrice") if item.get("UnitPrice") is not None else None
        product_code = item.get("ProductCode")
        amount = item.get("Amount") if item.get("Amount") is not None else None

        insert_query2 = "INSERT INTO invoice_detail (IdNumber, InvoiceNumber, ItemDescription, Quantity, Unit, UnitPrice, ProductCode, Amount) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)" 
        data2 = (i, invoice_number_of_subtable, item_description, item_quantity, unit, unit_price, product_code, amount)
        cursor.execute(insert_query2, data2)
        mysql.connection.commit()
  
    invoice_data["InvoiceDate"] = invoice_date.value.strftime("%Y-%m-%d") if invoice_date else None

    # Convert the `invoice_data` and `invoice_items` dictionaries to JSON
    json_invoice_data = json.dumps(invoice_data, default=str, indent=4)
    json_invoice_items = json.dumps(invoice_items, default=str, indent=4)

    jsonify_invoice_data = jsonify(invoice_data)

    # Store the JSON data in session variables
    session['json_invoice_data'] = json_invoice_data
    session['json_invoice_items'] = json_invoice_items

    # Print or use the JSON data as needed
    print(json_invoice_data)
    print(json_invoice_items)
    return json_invoice_data

@app.route('/', methods=['GET', 'POST'])
def hello():
    if request.method=='POST':
        print(request.form['httpLink'])
        analyze_invoice(request.form['httpLink'])
        json_invoice_data = session.get('json_invoice_data')
        session.pop('json_invoice_data', None)
        return render_template('index.html', json_available=True, json_data=json_invoice_data)
    return render_template('index.html', json_available=False)

@app.route('/analyze', methods=['GET', 'POST'])
def restApi():
    invoice_url=request.args.get('url')
    return analyze_invoice(invoice_url)

@app.route('/download')
def download():
    return 'Hi there'
 
if __name__ == '__main__':
    app.run(debug=True)
    # analyze_invoice(invoice_url)
