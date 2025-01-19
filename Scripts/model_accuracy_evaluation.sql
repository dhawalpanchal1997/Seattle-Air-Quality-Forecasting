SELECT
  *
FROM
  ML.EVALUATE(MODEL `bqml_tutorial.seattle_pm25_xreg_model`)
ORDER BY
  mean_absolute_error,
  mean_squared_error,
  root_mean_squared_error,
  mean_absolute_percentage_error,
  r2_score,
  explained_variance;
