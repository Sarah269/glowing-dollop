# Global Black Money Transactions

## Project
Analyze global money transactions for the period January 2013 to February 2014 to gain insights on the characteristics of money laundering transactions.

The dashboard has data on illegal and legal sources of funds.

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/GlobalBlackMoney/BBM_AML_Dashboard.png" height=400>

## Data Source
- [Kaggle: Global Black Money Transactions Dataset](https://www.kaggle.com/datasets/waqi786/global-black-money-transactions-dataset)
    - synthetic data

## Tools
- GCP Big Query, SQL, Power BI

## Reference
- Essential Box plots in Power BI: Why and How to Create Them, DataBear.com
- Box Plot in Power BI, DataTraining.io

## Tasks Performed
- Created a Big Query table by importing a csv file
- Queried table to gain insights on transactions whose source of money is illegal
- Add a new column for risk patterns
- Export modified dataset to a csv file
- Imported csv file into Power BI
- Created new measures in Power BI
- Developed a Power BI dashboard

## SQL Queries focusing on illegal funds
- What is the number of transactions in the table?
- What is the source of money for the transactions?
- Which countries have the most illegal transactions?
- Transaction Source of Money is Illegal by Transaction Type
- Transaction Source of Money is Illegal Destination Countries
- Transaction Source of Money is Illegal by Transaction Date
- Transaction Source of Money is Illegal by ReportedByAuthority
- Transaction Source of Money is Illegal by Country
- Transaction Source of Money is Illegal by Tax Haven Country
- Transaction Source of Money is Illegal by Industry
- Transaction Source of Money is Illegal by Money Laundering Risk Score
- What is the number of shell companies associated with transaction whose money source is illegal transactions?
- Top origination country to destination country combinations

## Selected Queries

-  What is the source of money for the transactions?

  <img src="https://github.com/Sarah269/glowing-dollop/blob/main/GlobalBlackMoney/Q2_SourceOfMoney.png" height=350>
The source of money for 70% of the transactions is illegal, 30% is legal.
<br></br>

-  Transaction Source of Money is Illegal by Transaction Type
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/GlobalBlackMoney/Q4_Illegal_TransType.png" height=350>
Stocks transfers, property purchases, cash withdrawals, offshore transfers, and crptopcurrency transactions were used to launder money.
<br></br>

- Transaction Source of Money is Illegal by Transaction Date
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/GlobalBlackMoney/Q6_Illegal_TransDT.png" height=350>
The level of transactions from illegal money sources remained consistent throughout 2013 then dropped off drastically at the end of the year.
<br></br>

- Transaction Source of Money is Illegal by Destination Countries
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/GlobalBlackMoney/Q5_Illegal_DestinationCtry.png" height=350>
USA, India, and South Africa are the top 3 destination countries for money laundering transactions.
<br></br>
  
- Transaction Source of Money is Illegal by Tax Haven Country
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/GlobalBlackMoney/Q9_Illegal_TaxHavenCtry.png" height=350>
Panama, Luxembourg, Cayman Islands, Singapore, Switzerland and the Bahamas were used as tax havens by money launders.
<br></br>

- Transaction Source of Money is Illegal by Industry
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/GlobalBlackMoney/Q10_Illegal_Industry.png" height=350>
Money laundering transactions were spread evenly across seven industries: Finance, Arms Trade, Luxury Goods, Constructions, Real Estate, Casinos, and Oil & Gas.
<br></br>
  
- What is the number of shell companies associated with transaction whose money source is illegal transactions?
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/GlobalBlackMoney/Q12_Illegal_ShellCoInvolved.png" height=350>
A money laundering transaction can have anywhere from 0 to 9 shell companies involved in a transaction.
<br></br>

- Top Origination to Destination combinations
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/GlobalBlackMoney/Q13_Top_Five_OrigToDest.png" height=350>
Switzerland to the USA is the most popular money laundering transaction Origination To Destination combination.
<br></br>

## Findings - Illegal Funds
- Brazil, South Africa, and China are the top 3 origination countries for money laundering transactions.
- USA, India, and South Africa are the top 3 destination countries for money laundering transactions.
- South Africa is in the top 5 for number of money laundering transactions, origination countries, and destination countries.  Could indicate a trade-loop or regional hub for illicit finance.
- Switzerland & Singapore are tax havens and destination countries.
- Switzerland to the USA is the most popular Origination To Destination combination for illegal

## Findings - Overall
- China to the USA is the most popular Origination To Destionation combination
- 10.2% of transactions are high-risk
- Avg risk score of 6/10 is high
- 20% of transactions were flagged by Authority
- 89% of transactions involved shell companies
- Money laundering is concentrated in seven industries.
- A money laundering transaction can involve as many as 9 shell companies.
- The high percentage of transactions involving shell companies and the high number of shell companies involved in a transaction suggests complex layering is the primary method being used to obscure the Beneficial Ownership of the funds.  

## Actions
- Prioritize resources to focus on the high-risk transactions for deeper due diligence and Suspicious Activity Report filing.
- Review all authority-flagged transactions
- Scrutinize all transactions involving shell companies especially those using 9 shell entities.
- Transactions in the Switerzerland to USA corridor should be subject to Enhanced Due Diligence (EDD). High-risk.
- Monitor the China to USA corridor for volume anomalies and potentieal trade-based money laundering.
- Destinate South Africa as a key focus country.
