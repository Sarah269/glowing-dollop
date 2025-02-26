# Online Payment Fraud Machine Learning Classification

## Project
Develop and train a DecisionTreeClassifier model to detect fraudulent online payment transactions.

<p float=left>
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/OnlinePaymentFraud/Accuracy.png" width="49%">
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/OnlinePaymentFraud/Predictions.png" width="49%">
</p>

## Tools
- Python, Pandas, Sci-kit Learn, Colab

## Streamlit App
[Online Payment Fraud ML App](https://github.com/Sarah269/urban-broccoli-opf/tree/main)

<p float=left>
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/OnlinePaymentFraud/opf_1.png" width="49%">
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/OnlinePaymentFraud/opf_3.png" width="49%">
</p>

## Data
https://www.kaggle.com/datasets/jainilcoder/online-payment-fraud-detection

## Jupyter Notebook
[Classification Model Notebook](https://github.com/Sarah269/glowing-dollop/blob/main/OnlinePaymentFraud/OnlinePymtFraud.pdf)


## Tasks Performed
- Load dataset
- Data preparation
- Data Visualization
- Correlation
- Encoding
- Imbalance
- Hyperparameter tuning
- Model
- Predictions
- Saved Model

## Results
- The online payment data had an imbalance of 6 million rows (Not Fraud) to 8213 rows (Fraud)
- Cash Out and Transfer were the only transactions with fraud transactions.  Cash In, Debit, and Payment did not have any fraud transactions.
- Handled the imbalance by using RandomUnderSampling to reduce the Not Fraud rows.
- Trained model using 82130 Not Fraud rows and 8213 Fraud rows.  90,343 total rows.
- Used hyperparameter tuning to determine the best parameters for the Decision Tree model
- The Decision Tree model achieved 96% accuracy for detecting Fraud for Cash Out and Transfer transactions.
- Without addressing imbalance and hyperparameter tuning, the model achieved 86% accuracy for detecting Fraud transactions.
  
## Limitations
- The dataset only contains fraud transactions for the CASH_OUT and TRANSFER transaction types. 
