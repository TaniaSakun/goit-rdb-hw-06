-- Task 1: Extract Year, Month, and Day from date in the orders Table
SELECT 
    id,
    date,
    YEAR(date) AS year,
    MONTH(date) AS month,
    DAY(date) AS day
FROM orders;

-- Task 2: Add One Day to the date Column in the orders Table
SELECT 
    id,
    date,
    DATE_ADD(date, INTERVAL 1 DAY) AS date_plus_one_day
FROM orders;

-- Task 3: Display the Timestamp Value of the date Column in Seconds
SELECT 
    id,
    date,
    UNIX_TIMESTAMP(date) AS timestamp_in_seconds
FROM orders;


-- Task 4: Count Rows Where date Is Between Two Specific Dates
SELECT 
    COUNT(*) AS count_of_rows
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

-- Task 5: Create and Display a JSON Object with id and date
SELECT 
    id,
    date,
    JSON_OBJECT('id', id, 'date', date) AS json_object
FROM orders;

