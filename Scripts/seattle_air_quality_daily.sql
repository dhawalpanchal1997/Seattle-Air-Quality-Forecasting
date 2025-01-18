WITH pm25_data AS (
    SELECT * FROM {{ ref('stg_pm25_daily') }}
),
temperature_data AS (
    SELECT * FROM {{ ref('stg_temperature_daily') }}
),
wind_data AS (
    SELECT * FROM {{ ref('stg_wind_speed_daily') }}
)
SELECT 
    p.date,
    p.pm25_value,
    t.temp_value,
    w.wind_speed,
    p.state_name,
    p.city_name
FROM pm25_data p
LEFT JOIN temperature_data t ON p.date = t.date
LEFT JOIN wind_data w ON p.date = w.date;
