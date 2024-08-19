# Breweries

### Project Overview
This project analyzes the open brewery database to gain insights on breweries in the United States.  

[Find a Brewery App](https://github.com/Sarah269/probable-octo-robot/tree/main)

![Breweries](https://github.com/Sarah269/glowing-dollop/blob/main/Breweries/BreweryPowerBI.png)

### Data Source
- Open Brewery DB public API. https://www.openbrewerydb.org/
  
### Tools
- Python, Jupyter Notebook:  Extract, process, and analyze data
- PowerBI: Dashboard. 

### Jupter Notebooks
- [Public API data extraction](https://github.com/Sarah269/glowing-dollop/blob/main/Breweries/Brewery_API.pdf)
- [Data processing and analysis](https://github.com/Sarah269/glowing-dollop/blob/main/Breweries/Brewery.pdf)

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


### PowerBI
- Removed columns: address_1, address_2, street, country, and phone 
- Created two columns:  Postal5, Name27

### Results/Findings
- There are 7089 breweries in the United States.
- California has the most breweries, 794.
- Portland is the city with the most breweries, 97.
- The US postal codes with the largest concentration of breweries are in Boulder, CO; Asheville, NC; and Cleveland, OH.
- Most common brewery name is Granite City Food & Brewery.
- District of Columbia and Mississippi have the least number of breweries.
- The west and midwest regions of the country have a high concentration of breweries.
- 89% of breweries reported a website URL.



