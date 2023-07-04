# Zonal Accident Risk Prediction

## Description
The Zonal Accident Risk Prediction project aims to analyze road accident data and identify patterns and features that contribute to accidents. The dataset includes information such as zonal codes, time, weather conditions, road conditions, casualties, and more. By understanding these factors, the project aims to reduce accidents and implement safety measures.

## Methodology
1. **Data Collection**: The accident risk data was sourced from Kaggle and consisted of multiple CSV files containing records of road accidents in different postal codes. The data was imported into Google Drive and Colab for analysis.
2. **Exploratory Data Analysis**: The dataset was thoroughly explored to gain insights into the data quality and identify any missing or inconsistent values. Data cleaning techniques were applied to ensure data consistency.
3. **Feature Selection**: Relevant predictors were selected, including police force, number of vehicles involved, day of the week, casualties, and urban/rural area. These features were vectorized for model building.
4. **Model Building**: Linear regression, random forest classification, and other models were implemented to predict factors such as speed limits and fatalities. Model performance was evaluated using metrics such as accuracy, root mean squared error, and r-squared value.
5. **Insights and Results**: The project generated insights into the highest accident-prone postal codes, road types, and day-of-week effects on accidents. Feature importance analysis helped identify key factors contributing to accidents. The findings can be used to implement targeted safety measures and reduce the accident rate.

## Insights
- Certain postal codes, such as 'BB2 7NP' and 'B32 1AG', experienced the highest number of accidents with corresponding fatalities.
- The analysis revealed that Saturday had the highest number of accidents, possibly due to increased travel and social activities. Surprisingly, Wednesday also had a high accident count.
- Linear regression models provided insights into factors influencing speed limits, while random forest classification helped predict speed limits based on selected features.
- Feature importance analysis highlighted the significance of factors like police force and speed limits in accident rates.
- The project aimed to provide a better understanding of accident risk factors and support the implementation of safety measures to reduce accidents.
