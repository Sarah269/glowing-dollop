# Global Black Money Transactions

## Project
Analyze global money transactions for the period 2013-01-01 to 2014-02-01 to gain insights on the characteristics of money laundering transactions.

## Data Source
- [Kaggle: Global Black Money Transactions Dataset](https://www.kaggle.com/datasets/waqi786/global-black-money-transactions-dataset)
    - synthetic data

## Tools
- GCP Big Query, SQL, Power BI

## Tasks Performed
- Created a Big Query table by importing a csv file
- Queried table to gain insights on transactions whose source of money is illegal

## SQL Queries
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
<img src="" height=350>
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
  
