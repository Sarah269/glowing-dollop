# Online Payment Fraud

## Project
Train machine learning classifiation model to classify fraudulent transactions

<p float=left>
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/OnlinePaymentFraud/Accuracy.png" width="49%">
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/OnlinePaymentFraud/Predictions.png" width="49%">
</p>

## Tools
- Python, Pandas, Sci-kit Learn, Colab

## Streamlit App
[Online Payment Fraud ML App](https://github.com/Sarah269/urban-broccoli-opf/tree/main)

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

## Results
- The online payment data had an imbalance of 6 million rows (Not Fraud) to 8213 rows (Fraud)
- Handled the imbalance by using RandomUnderSampling to reduce the No Fraud rows.
- Not Fraud rows were reduced to 20532 rows.
- Used hyperparameter tuning to determine the best parameters for the Decision Tree model
- The Decision Tree model achieved 97% accuracy for detecting Fraud transactions.
- Without addressing imbalance and hyperparameter tuning, the model achieved 86% accuracy for detecting Fraud transactions.
  
## Limitations
- The dataset only contains fraud transactions for the CASH_OUT and TRANSFER transaction types. Therefore, the model is not trained for fraud transactions in the CASH_IN, DEBIT, PAYMENT transaction types.
