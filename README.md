# Seattle Air Quality Forecasting

This project leverages a multivariate time series model (ARIMA_PLUS_XREG) to forecast air quality in Seattle based on PM2.5 levels, temperature, and wind speed. Using data from the `epa_historical_air_quality` dataset, the project demonstrates end-to-end implementation, from data processing to model creation and visualization.

## Dataset Overview

The `epa_historical_air_quality` dataset includes daily records of:
- PM2.5 concentrations
- Temperature
- Wind speed

### Sample Tables Used:
- `epa_historical_air_quality.pm25_nonfrm_daily_summary`
- `epa_historical_air_quality.wind_daily_summary`
- `epa_historical_air_quality.temperature_daily_summary`

## Project Objectives

The key steps in this project include:
1. **Model Creation**: Build a multivariate time series model using ARIMA_PLUS_XREG.
2. **Evaluation and Diagnostics**: Analyze ARIMA metrics and coefficients.
3. **Forecasting**: Predict future PM2.5 levels.
4. **Explaining Results**: Break down forecasts into components like trends, seasonality, and residuals.
5. **Visualization**: Use Looker Studio to explore and present air quality trends.

## Steps to Reproduce

### 1. Set Up the Environment
- Create a new Google Cloud Platform (GCP) project and dataset.
- Configure a service account and generate a JSON key.

### 2. dbt Cloud Setup
- Create and initialize a project in dbt Cloud IDE.
- Connect the dbt project to BigQuery and Git.
- Create views for PM2.5, temperature, and wind speed data.

### 3. Data Transformation
- Join the views to form a consolidated table.
- Execute `dbt run` to materialize the data in BigQuery.

### 4. Model Creation and Forecasting
- Use GoogleSQL to build and evaluate the ARIMA_PLUS_XREG model.
- Forecast PM2.5 levels and analyze the results.

### 5. Visualization
- Query the dataset in BigQuery and visualize the results in Looker Studio.

## Visualizations

The Looker Studio reports provide insights into:
- PM2.5 trends over time.
- Seasonal patterns and their impact on air quality.

### Links:
- **Looker Report 1**: [Report 1](https://lookerstudio.google.com/reporting/7eb64f89-e097-4a5d-82f3-e92c8a7c9636)
- **Looker Report 2**: [Report 2](https://lookerstudio.google.com/reporting/51db085a-d098-4935-a345-990d21d3c6be)

## Requirements
- Google Cloud Platform account
- dbt Cloud account
- Looker Studio access
- Python (optional for automation)
- SQL knowledge

## Results
The analysis highlights:
- Weekly seasonal patterns in PM2.5 levels.
- Key contributors to air quality fluctuations in Seattle.
- Accurate short-term forecasts for air quality.

