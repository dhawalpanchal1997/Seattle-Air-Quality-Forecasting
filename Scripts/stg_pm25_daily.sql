WITH source AS (
    SELECT * FROM `epa_historical_air_quality.pm25_nonfrm_daily_summary`
    WHERE state_name = 'Washington'
    AND city_name = 'Seattle'
)
SELECT 
    date_local as date,
    arithmetic_mean as pm25_value,
    state_name,
    city_name
FROM source
WHERE arithmetic_mean IS NOT NULL;
