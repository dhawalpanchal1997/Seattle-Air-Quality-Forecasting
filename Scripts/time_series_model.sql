CREATE OR REPLACE MODEL `bqml_tutorial.seattle_pm25_xreg_model`
OPTIONS(
    model_type='ARIMA_PLUS_XREG',
    time_series_timestamp_col='date',
    time_series_data_col='pm25_value',
    time_series_id_col='city_name',
    auto_arima=TRUE,
    data_frequency='AUTO_FREQUENCY',
    HOLIDAY_REGION='US',
    CLEAN_SPIKES_AND_DIPS=TRUE,
    DECOMPOSE_TIME_SERIES=TRUE
) AS
SELECT
    date,
    pm25_value,
    temp_value,
    wind_speed,
    city_name
FROM
    `bqml_tutorial.seattle_air_quality_daily`
WHERE
    date BETWEEN '2019-01-01' AND '2021-12-31'
ORDER BY
    date ASC;
