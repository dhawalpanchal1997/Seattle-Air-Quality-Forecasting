SELECT
  *
FROM
  ML.ARIMA_COEFFICIENTS(MODEL `bqml_tutorial.seattle_pm25_xreg_model`)
ORDER BY
  ar_coefficients,
  ma_coefficients;
