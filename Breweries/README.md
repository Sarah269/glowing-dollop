# Breweries

### Project Overview
This project analyzes the open brewery database to gain insights on breweries in the United States.

### Data Source
- Open Brewery DB public API. https://www.openbrewerydb.org/

### Tools
- Python, Jupyter Notebook:  Extract, process, and analyze data
- PowerBI: Dashboard

### Data Extraction
- Read data from public API using a loop to read multiple pages of data,
- Write data to a JSON file

### Data Cleaning/Preparation
- Read JSON file and convert data to a dataframe
- Corrected misspelled state name
- Dropped field with no values
- Dropped brewery types that did not represent an open brewery: closed, planning, bar, taproom
- Nulls left in place
- Data contained multiple countries.  Filtered on United States

### Exploratory Data Analysis
- Total breweries in the United States
- Percentage of breweries  with website URL
- Breweries by state
- Breweries by city
- Average length of brewery names
- Popular brewery names
- Postal code with most breweries
- data fields with nulls
- number of unique values for each field



  



