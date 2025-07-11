# Bank Customer Churn

## Project Objective
The objective of this project is to analyze customer churn at the bank by identifying key behavioral and demographic insights associated with customers who have closed their accounts. Leveraging these insights, the project aims to develop a predictive churn model capable of estimating the likelihood of a customer leaving. This model will enable the bank to proactively identify at-risk customers and implement targeted retention strategies to reduce customer attrition and improve long-term engagement.

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/CustomerChurn/ExitCust_FeatureImportance.png" height=400>

## Reference
- Hyperparameter Optimization for Xgboost, Krish Naik
- Xgboost Parameters, geeksforgeeks.org

## Data Source
- Kaggle Churn Modelling: https://www.kaggle.com/datasets/shrutimechlearn/churn-modelling/data

## Tools
- Python, Pandas, Seaborn, Xgboost, Colab

## Tasks
- Load Libraries
- Load Dataset
- Exploratory Data Analysis - Customers
- Exploratory Data Analysis - Exited Customers
- Correlation
- Split into Features & Target
- Feature Engineering
- Hyperparameter Optimization
- Split into Train and Test
- Xgboost Model
- Xgboost Model Results
- Xgboost Model Feature Importance
- Xgboost Model Predication
- Xgboost Model Predication with New Data

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/CustomerChurn/atrisk_1.png" height=300>
<br>
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/CustomerChurn/atrisk_2.png" height=300>

  
## Characteristics of Exited Customers
- 64% did not use the bank
- 70% had a credit card
- Average tenure was 5 years which is the same for all customers.
- 55.9% female, 44% male.  45% of customers are female.
- Average age was 45 years which was 6 years older than the average for customers.
- 80% were located were Germany (40%) and France (40%).  25% of the bank's customers are located in Germany.
- The average balance for Exited Customer was \$91,109  while the average for customers was \$76,486.
- 31% used more than one bank product while 49% of customers used more than one bank product.

## Recommendations
- Create a user interface that will allow the enduser to enter parameters and receive a prediction with a probability.
- Based on the predictions, create incentives that would help the customer to stay with the bank.
- Investigate why so many customers in Germany are leaving the bank.
- Monitor customer activity and develop a program to reach out to customers that are not engaging with the bank on a regular basis.
- Set a goal for customers to have more than one bank product
- Why are female customers leaving in a greater proportion than male customers?

## Limitations
- Did not address imbalance between customers who stayed and customers who left the bank

