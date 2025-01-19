SELECT
  *
FROM
  ML.FORECAST(MODEL `bqml_tutorial.seattle_pm25_xreg_model`,
    STRUCT(30 AS horizon, 0.8 AS confidence_level))
ORDER BY
  forecast_timestamp;
