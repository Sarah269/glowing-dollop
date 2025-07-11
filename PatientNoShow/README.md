# Patient Medical Appointment Noshows

## Project Objective
This project aims to analyze 110,527 medical appointment records from a Brazilian healthcare facility to uncover behavioral and demographic factors associated with patient no-shows. Using these insights, the project develops a predictive model to estimate the likelihood of a patient missing an appointment. The model is designed to help the facility proactively identify at-risk patients and implement targeted interventions to reduce no-show rates and improve care delivery.

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/PatientNoShow/FeatureImportance.png" height=300>

## Reference
- MLJourney, xgboost feature importance comprehensive guide

## Kaggle Dataset Medical Appointment NoShow
- https://www.kaggle.com/datasets/joniarroba/noshowappointments/

## Tools
- Python, Pandas, Seaborn, Xgboost, SMOTENC

## Tasks
- Load Libraries
- Load Dataset
- Data Cleaning
- Exploratory Data Analysis
- Feature Engineering
- Noshow Patient Data Visualization

<p float=left>
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/PatientNoShow/DaysBetween.png" width="49%">
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/PatientNoShow/Age.png" width="49%">
</p>

  
- Split into Features and 
- Address Imbalance between attended and no show appointments
- Split into Train and Test Datasets
- Xgboost Model
- Xgboost Results.  The model achieved 72% accuracy
- Xgboost Model Feature Importance

## NoShow Patient Insights
- 20% of scheduled appointments are missed.
- Female patients account for 65% of noshows.  
- Looking at age, infants have the highest amount of noshows.  The next age groups with high numbers for noshows are young adults (18 to 26) and adults in the mid-30s.  
- Tuesday has the highest number of noshows follwed by Monday and Wednesday.  After Wednesday, there is a decrease in noshows for Thursday to Saturday.
- May has an unusally high number of missed appointments.
- Patient medical conditions do not increase missed appointments.
- Sending text messages does not decrease noshows.  43% of noshows received text messages.
- Patients living in the Jardim Camburi neighborhood had the highest number of missed appointments, 19% of its scheduled appointments. However, patients living in the Itarare neighborhood missed 26% of their scheduled appointments.

## Limitations
- AppointmentDay column did not contain any time information.  This information would be useful to determine if appointment time impacts missed appointments.
- Several observations had ScheduledDay > AppointmentDay, which impacts the feature DaysBetween. DaysBetween is the top feature.

## Improving Model Performance
- Try different models
- Add new features
- Correct data issues

## Next Steps
- Build a user-friendly interface that would allow the enduser to input parameters and receive a prediction on whether the patient is likely to miss the appointmnet.
- Develop a strategy to engage the groups identified to provide assistance to help the patient keep the appointment.
- Engage in additional research on why patients are missing appointments, ie. transportation, distance, work, childcare, finances, weather, appointment auto-scheduled, etc.
- Are home visits an option for women with infants?
- Can the medical facility provide a pickup service for patients?  
- 
  
