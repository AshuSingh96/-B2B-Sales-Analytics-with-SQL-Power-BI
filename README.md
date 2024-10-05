# B2B Sales Pipeline Project

This project demonstrates the process of managing a B2B sales pipeline by leveraging Google Sheets, Python, MySQL, and Power BI to create an interactive dashboard. Below is the step-by-step guide and overview of the project's workflow.

## Table of Contents
- [Overview](#overview)
- [Tech Stack](#tech-stack)
- [Workflow](#workflow)
- [Setup and Installation](#setup-and-installation)
- [Data Cleaning](#data-cleaning)
- [Power BI Dashboard](#power-bi-dashboard)
- [Contributing](#contributing)
- [License](#license)

## Overview

This project automates the sales data processing workflow, starting from uploading and  fetching data from Google Sheets, integration with Python, data storage in MySQL, data cleaning, and finally creating an interactive B2B sales pipeline dashboard in Power BI.

## Tech Stack

- **Google Sheets**: Used as the initial platform for data extraction.
- **Python**: Handles API integration with Google Sheets and transfers data to the MySQL server.
- **MySQL**: Serves as the database to store and clean sales data.
- **Power BI**: Connects to the MySQL database and creates an interactive dashboard to visualize the sales pipeline.

## Workflow

1. **Upload Sales Data to Google Sheets**:  
   Sales data is manually entered into a shared Google Sheets document.

2. **Link Google Sheets to Python via API**:  
   Using the Google Sheets API, the data is extracted from the sheet using Python.  
   The API key is used to authenticate the connection and retrieve the data.

3. **Dump Data to MySQL Server**:  
   Python processes the data and inserts it into a MySQL database.

4. **Data Cleaning in MySQL**:  
   Once the data is stored in MySQL, it undergoes a cleaning process, including:
   - Handling missing values
   - Normalization
   - Removing duplicates

5. **Connect Power BI to MySQL**:  
   Power BI connects to the MySQL database to retrieve the cleaned data.

6. **Create an Interactive Dashboard**:  
   The cleaned data is visualized using Power BI, where the B2B sales pipeline is represented through various charts, graphs, and filters for analysis.

## Setup and Installation

### Google Sheets API Setup

1. Go to [Google Cloud Console](https://console.cloud.google.com/).
2. Create a new project and enable the Google Sheets API.
3. Generate API credentials and download the API key.
4. Share the Google Sheet with the service account email.

### Python Environment Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/-B2B-Sales-Analytics-with-SQL-Power-BI
