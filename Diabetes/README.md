# Linear Regression with Statistics & Machine Learning

<p>This project performs linear regression on a sci-kit learn dataset called Diabetes.  This dataset has 10 features and 442 observations.  The target is a measure of the progress of the disease one year after baseline.</p>

## Exploratory Data Analysis
### Feature Correlation
<p>s1 (total serum cholestrol) and s2 (low-density lipoproteins:ldl) have a very strong positive correlation (.90).  An increase in LDL correlates to an increase in total serum cholestrol.</p>  

<p>s3 (high-density lipoproteins: hdl) and s4 (total cholestrol) have a strong negative correlation (-.74).  An increase in HDL correlates to a decrease in total cholestrol.

### Feature Value Distribution
Based on the distplot, the feature values appear to be normally distributed.

Based on the boxplot, features s1, s2, s3, & s6 have several outliers above the 75% distribution mark.  Features bmi and s4 have a couple of outliers above the 75% distribution mark.

## Models
### OLS Regression
This model was run multiple times. The first time (RMSE: 53.48) it was run with all of the features. The second (RMSE: 55.17) and third time (55.53) the model was run with selected feature based on the probability results of the t-test. A t-test probability less than 0.05 indicates the feature has a relationship with the target. The feature with a t-test probability less than 0.05 were selected for the second and third runs. The F-statistic showing the abilty of the model to explain the target improved with each run however, the RMSE score remained high indicating the model was not doing a good job with predications.  

### Ridge Regression
This model was run with optimized hyperparameters and the same selected features used in the third run of the OLS Regression model.  The RMSE (53.13) was a little lower than the first run of the OLS Regression model (53.48).

### Random Forest Regressor
This model was run with optimized hyperparameters and the same selected features used in the third run of the OLS Regression model. The RMSE was 61.52.

## Conclusion
Ridge Regression had the lowest RMSE score out of the three models that were used. Although none of the models performed particularly well at forecasting values for this data, that would theoretically make the Ridge model the best model. An RMSE that is close to zero is ideal.


