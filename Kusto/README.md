# Kusto Exploratory Data Analysis


## Project
Conduct exploratory data analysis on Microsoft Azure Logs database customEvents table using Kusto Query Language (KQL).  The customEvents table contains web events for an applications for the last 24 hours.

## Data Source
- Microsoft Azure Logs Activity

## Tools
- Microsoft Azure, Kusto KQL

## Queries for customEvents table

### What was the date/time (UTC) range?
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_daterange.png" height=350>

<p> The date/time range was 5/27/2025 8:10 am to 5/28/2025 8:11 am</p>

### Pick a couple of columns and check for missing data
   
  1. Name: No missing data
 <img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_Missing_name.png" height=350>

  2. Client_CountryOrRegion: No missing data
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_Missing_ctry.png" height=350>

  3. client_Browser: 20580 missing
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_Missing_clientBrowser.png" height=350>
  
### How many types of events occurred?

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_distinctEvents.png" height=350>

<p>18 different events occurred</p>

### What was the average number of events per event type?

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_avgEvents.png" height=350>

<p>There was an average of 4080 events per event type</p>

### Which event type has the highest frequency?

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_EventFreq.png" height=350>

<p>"Clicked Create New Ticket Button" was the most frequent event</p>

### Which event type has the lowest frequency?

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_LowFreq.png" height=350>

<p>IPA was the event type with the least frequent event</p>

### What was the event activity per country? 

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_RankEvntCtry.png" height=350>

<p>The most frequent event type originating from United States endusers was Application Monitoring</p>

### What was the most frequent event for each country?

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_HighestNumEventsbyCtry.png" height=350>

<p>A query was created to sort events by country, event count.  The query results were ranked for each country based on the most frequent to least frequent event type. Finally, for each country the top ranked event type was selected.</p>

### What is the frequency of events by browser?

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Kusto/customEvents_Browsers.png" height=350>

<p>Chrome is the browser with the most events</p>
