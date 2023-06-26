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

# How to run this application in local system?

## Prerequisites

- Python 3.x installed on your local system.
- MySQL server installed and running.
- Azure Form Recognizer service subscription and API key.

## Installation and Setup

1. Clone the repository:
```
git clone <repository-url>
```

2. Navigate to the cloned repository directory.

3. Create a virtual environment for the project:

```
python3 -m venv venv
```

4. Activate the virtual environment:

- For Windows:

  ```
  venv\Scripts\activate
  ```

- For macOS/Linux:

  ```
  source venv/bin/activate
  ```

5. Install the required dependencies:

```
pip install -r requirements.txt
```

6. Open the `app.py` file in a text editor.

7. Update the following variables with your MySQL database configuration:

- `app.config['MYSQL_HOST']`: MySQL host address.
- `app.config['MYSQL_USER']`: MySQL username.
- `app.config['MYSQL_PASSWORD']`: MySQL password.
- `app.config['MYSQL_DB']`: MySQL database name.

8. Update the `endpoint` and `key` variables with your Azure Form Recognizer service endpoint and API key.

9. Ensure that your MySQL server is running.

10. Connect to your MySQL server using a client tool (e.g., MySQL Workbench).

11. Create a new database with the name specified in the `app.config['MYSQL_DB']` variable.

12. Optionally, you can import the database schema and sample data from the `database.sql` file provided in the repository.

## Running the Application

1. Make sure you are in the project directory.

2. Activate the virtual environment if it is not already activated:

- For Windows:

  ```
  venv\Scripts\activate.ps1
  ```
  .ps1 is written for PowerShell. If you are using another type of terminal then please refer the following

* PowerShell (Windows): .ps1
* Command Prompt (Windows): .bat or .cmd
* Bash (Unix-like systems): .sh
* Zsh (Unix-like systems): .zsh or .sh
* Fish (Unix-like systems): .fish

- For macOS/Linux:

  ```
  source venv/bin/activate
  ```

3. Run the Flask application:

```
python3 app.py
```
or
```
python app.py
```

4. The application should now be running locally on `http://localhost:5000`.

5. Open a web browser and visit `http://localhost:5000` to access the Invoice Analyzer application.

## Analyzing an Invoice

1. On the home page of the application, you can submit a PDF link of an invoice using the provided form.

2. Enter the PDF link in the input field and click the "Analyze" button.

3. The application will extract data from the invoice using the Azure Form Recognizer service and store it in the MySQL database.

4. The extracted invoice data will be displayed on the web page, allowing you to view and interact with the structured information.

## API Endpoint

1. To access the application as an API, use the following endpoint: `http://localhost:5000/analyze?url=<pdf-url>`.

- Replace `<pdf-url>` with the URL of the PDF invoice you want to analyze.

- Example: `http://localhost:5000/analyze?url=https://example.com/invoice.pdf`.

2. The API endpoint will return the extracted invoice data in JSON format, which can be further processed or integrated into other applications.

##Congratulations! 

You have successfully set up and run the Invoice Analyzer application on your local system. You can now analyze invoices, view the extracted data on the web interface, and utilize the API endpoint for programmatic access to the application.
