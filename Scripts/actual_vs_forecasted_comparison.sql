WITH actual_data AS (
  SELECT
    date,
    pm25_value
  FROM
    `bqml_tutorial.seattle_air_quality_daily`
),
forecast_data AS (
  SELECT
    time_series_timestamp AS date,
    time_series_data
  FROM
    ML.EXPLAIN_FORECAST(MODEL `bqml_tutorial.seattle_pm25_xreg_model`,
      STRUCT(30 AS horizon, 0.8 AS confidence_level))
)
SELECT
  a.date,
  a.pm25_value AS actual_pm25,
  f.time_series_data AS forecasted_pm25,
  ABS(a.pm25_value - f.time_series_data) AS absolute_error,
  ((a.pm25_value - f.time_series_data) / a.pm25_value) * 100 AS percentage_error
FROM
  actual_data a
FULL OUTER JOIN
  forecast_data f
ON
  a.date = f.date
ORDER BY
  date;
