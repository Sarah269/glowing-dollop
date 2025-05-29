# Kusto Exploratory Data Analysis


## Project
Conduct exploratory data analysis on Microsoft Azure Logs database customEvents table using Kusto Query Language (KQL).  The customEvents table contains web events for an applications for the last 24 hours.

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_HighestNumEventsbyCtry.png" height=400>


## Data Source
- Microsoft Azure Logs Activity


## Tools
- Microsoft Azure, Kusto KQL


## Queries for customEvents table

### Missing Data
   
  1. Name: No missing data
 <img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_Missing_name.png" height=350>

  2. Client_CountryOrRegion: No missing data
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_Missing_ctry.png" height=350>

  3. client_Browser: 20580 missing
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_Missing_clientBrowser.png" height=350>
  
###    Number of Distinct Events:  How many different events occurred?

