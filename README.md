# Azure-Invoice-recognizer-app

## Project Description
The Invoice Analyzer is a web application built using **Flask** and **Python** that enables users to analyze invoices provided in **PDF link format**. The application utilizes the **Microsoft Azure Form Recognizer service** to extract data from the invoice and provide structured information either in JSON format file for download from the website itself or to store the data extracted in MySQL database so that this data can be used for further processing.

## Key Features:

1. Invoice Analysis: Users can submit a PDF link of an invoice to the web application. The application leverages the [**Microsoft Azure Form Recognizer API**](https://learn.microsoft.com/en-us/azure/applied-ai-services/form-recognizer/quickstarts/get-started-sdks-rest-api?view=form-recog-3.0.0&preserve-view=true&pivots=programming-language-java) to extract relevant data such as vendor name, vendor address, customer name, customer address, invoice number, invoice date, payment terms, purchase order, total amount, and more.

2. Data Storage: The extracted invoice data is stored in a **MySQL database**. The application establishes a connection with the database and stores the extracted data for further reference and analysis. We used XAMPP for running a server in local host and phpMyAdmin handelling the administration of MySQL over the Web.

3. JSON Output: The extracted invoice data is converted to **JSON format** for easy handling and manipulation. The JSON data includes both header information (e.g., vendor details, customer details, invoice details) and line item details (e.g., item description, quantity, unit price, amount).

4. Web Interface: The application provides a user-friendly web interface where users can submit the PDF link of an invoice for analysis. Upon analysis, the extracted invoice data is displayed on the web page, allowing users to view and interact with the structured information.

5. API Endpoint: The application also works as an API by providing an endpoint `/analyze?url=`. Users can make HTTP requests to the API endpoint by providing the URL of the deployed web application followed by `/analyze?url=` and the URL of the PDF invoice. The API returns the extracted invoice data in **JSON format**, which can be further processed or integrated into other applications.

Overall, the Invoice Analyzer project offers a convenient way to extract structured data from invoices using the Microsoft Azure Form Recognizer service. It provides both a web interface and an API endpoint, offering flexibility in accessing and utilizing the extracted invoice data.
