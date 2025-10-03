# Stroke Classification Machine Learning

## Project 
This project builds a machine learning classification model to predict whether a patient is likely to get a stroke based on parameters like gender, age, glucose level, body mass, hypertension, and smoking. This datset has 5110 rows and 12 columns.

Link to Gamma presentation: https://gamma.app/docs/ML-Driven-Stroke-Risk-System-dq8lh6uzcvygv4p

<p float=left>
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Stroke/2_Project-Summary-and-Clinical-Insights.png" width="49%">
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Stroke/3_Strategic-Implementation-Roadmap.png" width="49%">
</p>

## Data Source
[Kaggle healthcare-stroke data](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset)

## Tools
Python, Pandas, sci-kit learn, PowerPoint, Gemini, Gamma

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

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Stroke/Stroke%20Slide.png" height="400" />

 ## Limitations
 There is a great imbalance between the number of stroke and non-stroke target values. The data
 contained 249 observations for stroke and 4860 for non-stroke. Imbalance over sampling was used
 to achieve equal number of stroke and non-stroke target values.
 

