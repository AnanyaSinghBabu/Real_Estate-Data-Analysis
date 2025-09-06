-- 1. See how many universities are in the dataset
SELECT COUNT(*) AS total_property_name FROM flats;

-- 2. Summary Statistics (Average, Min, Max, Median Price)
SELECT 
    AVG(price) AS avg_price,
    MIN(price) AS min_price,
    MAX(price) AS max_price
FROM flats;

-- 3. Average Price by Bedrooms
SELECT bedRoom, AVG(price) AS avg_price
FROM flats
GROUP BY bedRoom
ORDER BY bedRoom;

-- 4.Average Price by Bathrooms
SELECT bathroom, AVG(price) AS avg_price
FROM flats
GROUP BY bathroom
ORDER BY bathroom;

-- 5. Facing Direction Counts
SELECT facing, COUNT(*) AS total_properties
FROM flats
GROUP BY facing
ORDER BY total_properties DESC;

-- 6. Top 10 Societies by Average Price
SELECT society, AVG(price) AS avg_price
FROM flats
GROUP BY society
ORDER BY avg_price DESC
LIMIT 10;

-- 7.Top 10 Locations by Number of Properties
SELECT address, COUNT(*) AS total_properties
FROM flats
GROUP BY address
ORDER BY total_properties DESC
LIMIT 10;

--8.Area vs Price Trend
SELECT area, AVG(price) AS avg_price
FROM flats
GROUP BY area
ORDER BY CAST(area AS UNSIGNED);

-- 9.Property Counts & Summary
SELECT society, COUNT(*) AS total_properties
FROM flats
GROUP BY society
ORDER BY total_properties DESC
LIMIT 10;

-- 10.Top 5 Most Expensive Properties
SELECT property_name, society, price, address
FROM flats
ORDER BY price DESC
LIMIT 5;

-- 11.Top 5 Cheapest Properties
SELECT property_name, society, price, address
FROM flats
ORDER BY price ASC
LIMIT 5;

-- Ratings & Quality
--Highest Rated Properties
SELECT property_name, society, rating, price
FROM flats
ORDER BY rating DESC
LIMIT 10;

-- Average Rating by Society
SELECT society, AVG(rating) AS avg_rating
FROM flats
GROUP BY society
ORDER BY avg_rating DESC
LIMIT 10;

-- Properties with 3 Bedrooms
SELECT property_name, society, price
FROM flats
WHERE bedRoom = 3;

-- Properties with Price More Than 1 Crore
SELECT property_name, society, price
FROM flats
WHERE price > 10000000;

-- Maximum & Minimum Price
SELECT MAX(price) AS max_price, MIN(price) AS min_price
FROM flats;




