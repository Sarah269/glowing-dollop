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
- Breakdown of illegal transactions by Transaction Type
- Destination Countries of illegal transactions
- Breakdown of illegally sourced transactions by Transaction Date
- Breakdown of illegal transactions by ReportedByAuthority
- Breakdown of illegal transactions by Country
- Breakdown of illegal transactions by Tax Haven Country
- Breakdown of illegal transactions by Industry
- Breakdown of illegal transactions by Money Laundering Risk Score
- What is the number of shell companies associated with an illegal transactions?SQL Queries

## Selected Queries

-  What is the source of money for the transactions?

  <img src="https://github.com/Sarah269/glowing-dollop/blob/main/GlobalBlackMoney/Q2_SourceOfMoney.png" height=300>
The source of money for 70% of the transactions is illegal, 30% is legal.
<br></br>

- Breakdown of illegally sourced transactions by Transaction Type
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/GlobalBlackMoney/Q4_Illegal_TransType.png" height=300>
