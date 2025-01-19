SELECT
  *
FROM
  ML.EXPLAIN_FORECAST(
    MODEL `bqml_tutorial.seattle_pm25_xreg_model`,
    STRUCT(30 AS horizon, 0.8 AS confidence_level),
    (
      SELECT 
        date,
        temperature,
        winf_speed
     FROM
        `seattle_air_qualit_daily`
     WHERE 
        date > DATE('2020-12-31')
    )
 );
