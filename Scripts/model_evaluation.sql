SELECT
  *
FROM
  ML.ARIMA_EVALUATE(MODEL `bqml_tutorial.seattle_pm25_xreg_model`)
ORDER BY
  non_seasonal_p,
  non_seasonal_d,
  non_seasonal_q;
