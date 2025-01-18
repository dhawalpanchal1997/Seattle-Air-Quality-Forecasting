
WITH source AS (
    SELECT * FROM `epa_historical_air_quality.wind_daily_summary`
    WHERE state_name = 'Washington'
    AND city_name = 'Seattle'
)
SELECT 
    date_local as date,
    arithmetic_mean as wind_speed,
    state_name,
    city_name
FROM source
WHERE arithmetic_mean IS NOT NULL;
