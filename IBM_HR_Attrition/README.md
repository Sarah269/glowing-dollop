# IBM HR Attrition Machine Learning

## Project
Develop and train a RandomForestClassifier model to detect employees that are most likely to leave the company.

<p float=left>
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/IBM_HR_Attrition/Accuracy_HR.png" width="49%">
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/IBM_HR_Attrition/IBM_HR_Feature_Importance.png" width="49%">
</p>

## Tools
- Python, Pandas, Scikit-learn, Colab

## Data Source
[IBM HR Attrition & Performance Dataset](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)

## Jupyter Notebook
[Jupyter Notebook PDF](https://github.com/Sarah269/glowing-dollop/blob/main/IBM_HR_Attrition/EmployeeAttrition.pdf)

## Tasks Performed
- Load dataset
- Exploratory Data Analysis
- Feature Engineering
- Data Visualization
- Encoding
- SelectKBest
- Imbalance
- Hyperparameter tuning
- Model
- Feature Importance
- Saved Model

## Results
- Trained RandomForestClassifier model achieving 96% accuracy by using 17 of 49 features,
 addressing the imbalance between Attrition and No Attrition, and hypertuning model parameters. The model’s accuracy without addressing the imbalance was 87%.
- Attrition for single employees (25.5%) was 2 times married employees (12.5%) and 2.5 times divorced employees (10.1%).
- Attrition for male employees (17%) was slightly higher than female employees (14.8%).
- The Sales department had the highest attrition rate at 20.6%. HR’s rate was 19%. R & D’s rate was 13.8%.
- The features with the highest importance rating were MonthlyIncome, Age, TotalWorkingYears, YearsAtCompany, and OverTime.
- The 17 features used to train the model were:
 ‘Age’, ‘JobInvolvement’, ‘JobLevel’, ‘MonthlyIncome’, ‘OverTime’, ‘StockOptionLevel’,
 ‘TotalWorkingYears’, ‘TrainingTimesLastYear’, ‘YearsAtCompany’, ‘YearsInCurrentRole’,
 ‘YearsSinceLastPromotion’, ‘BT_Non-Travel’, ‘BT_Travel_Frequently’, ‘JR_Human Re
sources’, ‘MS_Single’, ‘EF_Life Sciences’, ‘EF_Marketing’
