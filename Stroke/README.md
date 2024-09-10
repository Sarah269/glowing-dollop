# Stroke Classification Machine Learning

## Project 
This project builds a machine learning classification model to predict whether a patient is likely to get a stroke based on parameters like gender, age, glucose level, body mass, hypertension, and smoking..  This datset has 5110 rows and 12 columns.

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Stroke/Stroke%20Slide.png" height="400" />

## Data Source
[Kaggle healthcare-stroke data](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset)

## Tools
Python, Pandas, sci-kit learn, PowerPoint

## Tasks Performed
*  Data Cleaning
*  Exploratory Data Analysis
*  Encoding
*  Imbalance Correction
*  Split dataset into Train and Test
*  Scale Data
*  Determine best parameters for SVM model
*  SVM Model
*  Metrics
*  Feature Importance
*  Findings
*  Limitations

## Imbalance
The target had 246 values for stroke and 4860 values for no stroke.

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Stroke/Stroke%20Data%20Target%20Values.png" width="400" />

## Metrics
The model had 97% accuracy.

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Stroke/Stroke%20Confusion%20Matrix.png" height="400" />

## Feature Importance
Age, BMI, and average glucose level were identified as the top features.

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Stroke/Stroke%20Important%20Features.png" height="400" />

## Findings
- Age range for stroke patients is 40- 80
-  Average glucose level for stroke patients is above 100 with more activity above 150
- BMI for stroke patients is 20- 60
-  Best parameters for SVM model: {‘C’: 100, ‘gamma’: 1}
-  The SVM model accuracy is 97%.
-  Based on model results the most important features are age, bmi, and average glucose. The  secondary features are gender, residence, work private, and never smoked.

 ## Limitations
 There is a great imbalance between the number of stroke and non-stroke target values. The data
 contained 249 observations for stroke and 4860 for non-stroke. Imbalance over sampling was used
 to achieve equal number of stroke and non-stroke target values.
 

