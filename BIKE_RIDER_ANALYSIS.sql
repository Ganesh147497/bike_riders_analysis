
DROP TABLE IF EXISTS bike_riders;

CREATE TABLE bike_riders (
    rider_id VARCHAR(20),
    date DATE,
    location VARCHAR(50),
    rides INT,
    on_time_rides INT,
    cancelled_rides INT,
    missed_rides INT,
    distance_km FLOAT,
    overhead_distance_km FLOAT,
    earnings FLOAT,
    peak_bonus FLOAT,
    waiting_earnings FLOAT,
    fuel_cost FLOAT,
    idle_minutes INT,
    work_hours FLOAT,
    customer_rating FLOAT,
    avg_speed_kmph FLOAT,
    network_downtime INT
);
LOAD DATA LOCAL INFILE 'C:/Users/surya/Downloads/BIKE_RIDERS_ANALYSIS.csv'
INTO TABLE bike_riders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- View first 10 rows from bike_riders table
SELECT *
FROM bike_riders
LIMIT 10;

-- Count total rows in dataset
SELECT COUNT(*) AS total_records
FROM bike_riders;

-- Get list of unique locations (cities)
SELECT DISTINCT location
FROM bike_riders;

-- Calculate total earnings across all riders
SELECT SUM(earnings) AS total_earnings
FROM bike_riders;

-- Find overall average customer rating
SELECT AVG(customer_rating) AS avg_rating
FROM bike_riders;

-- Calculate total earnings per city
SELECT 
    location,
    SUM(earnings) AS total_earnings
FROM bike_riders
GROUP BY location
ORDER BY total_earnings DESC;

-- Calculate total rides handled by each rider
SELECT 
    rider_id,
    SUM(rides) AS total_rides
FROM bike_riders
GROUP BY rider_id
ORDER BY total_rides DESC
LIMIT 10;

-- Calculate cancellation percentage per city
SELECT 
    location,
    ROUND(SUM(cancelled_rides) / SUM(rides) * 100, 2) AS cancellation_rate_percent
FROM bike_riders
GROUP BY location
ORDER BY cancellation_rate_percent DESC;


-- Calculate total profit (earnings - fuel cost)
SELECT 
    SUM(earnings - fuel_cost) AS total_profit
FROM bike_riders;


-- Find top 10 riders by total profit
SELECT 
    rider_id,
    SUM(earnings - fuel_cost) AS total_profit
FROM bike_riders
GROUP BY rider_id
ORDER BY total_profit DESC
LIMIT 10;


-- Categorize riders based on idle time
SELECT 
    CASE 
        WHEN idle_minutes < 30 THEN 'Low Idle'
        WHEN idle_minutes BETWEEN 30 AND 60 THEN 'Medium Idle'
        ELSE 'High Idle'
    END AS idle_category,
    AVG(earnings - fuel_cost) AS avg_profit
FROM bike_riders
GROUP BY idle_category;


-- Check if network downtime affects missed rides
SELECT 
    location,
    SUM(missed_rides) AS total_missed_rides,
    AVG(network_downtime) AS avg_network_downtime
FROM bike_riders
GROUP BY location
ORDER BY total_missed_rides DESC;

-- Compare profit based on rating category
SELECT 
    CASE 
        WHEN customer_rating >= 4.5 THEN 'High Rated'
        ELSE 'Low Rated'
    END AS rating_category,
    AVG(earnings - fuel_cost) AS avg_profit
FROM bike_riders
GROUP BY rating_category;

-- Filter cities where total profit exceeds 1,000,000
SELECT 
    location,
    SUM(earnings - fuel_cost) AS total_profit
FROM bike_riders
GROUP BY location
HAVING total_profit > 1000000;

-- Calculate monthly earnings trend
SELECT 
    MONTH(date) AS month,
    SUM(earnings) AS total_earnings
FROM bike_riders
GROUP BY MONTH(date)
ORDER BY month;

-- Find riders earning more than average profit
SELECT rider_id,
       SUM(earnings - fuel_cost) AS total_profit
FROM bike_riders
GROUP BY rider_id
HAVING total_profit > (
    SELECT AVG(earnings - fuel_cost)
    FROM bike_riders
);

-- Executive KPI summary
SELECT 
    COUNT(DISTINCT rider_id) AS total_riders,
    SUM(rides) AS total_rides,
    SUM(earnings) AS total_earnings,
    SUM(fuel_cost) AS total_fuel_cost,
    SUM(earnings - fuel_cost) AS total_profit,
    ROUND(SUM(cancelled_rides) / SUM(rides) * 100, 2) AS cancellation_rate_percent,
    AVG(customer_rating) AS avg_rating
FROM bike_riders;

