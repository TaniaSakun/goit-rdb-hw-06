# goit-rdb-hw-07
The repository for the 7th GoItNeo Relational Databases homework

Homework Description

### Task 1
Write an SQL query that extracts the year, month, and day for the orders table with the date attribute. Enter them on the screen in three separate attributes along with the id attribute and the original date attribute (a total of 5 attributes).

```
SELECT 
    id,
    date,
    YEAR(date) AS year,
    MONTH(date) AS month,
    DAY(date) AS day
FROM orders;
```
<img width="819" alt="p1" src="https://github.com/user-attachments/assets/7d5683a2-1434-4da5-8221-e6ddbbb9e666">

### Task 2
Write an SQL query that adds one day to the date attribute for the orders table. Enter the id attribute, the original date attribute, and the result of the addition on the screen.

```
SELECT 
    id,
    date,
    DATE_ADD(date, INTERVAL 1 DAY) AS date_plus_one_day
FROM orders;
```
<img width="584" alt="p2" src="https://github.com/user-attachments/assets/1a5fbfbc-d23b-4a01-8a22-535ee677549c">

### Task 3
Write an SQL query that displays the number of seconds since the start of the countdown for the date attribute for the orders table (shows its timestamp value). To do this, find and add the necessary function. Enter the id attribute, the original date attribute, and the result of the function on the screen.

```
SELECT 
    id,
    date,
    UNIX_TIMESTAMP(date) AS timestamp_in_seconds
FROM orders;
```
<img width="602" alt="p3" src="https://github.com/user-attachments/assets/25001ada-b012-4cc1-a33c-ac4207b08f0c">

### Task 4
Write an SQL query that determines how many rows the orders table contains with the date attribute between 1996-07-10 00:00:00 and 1996-10-08 00:00:00.

```
SELECT 
    COUNT(*) AS count_of_rows
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';
```
<img width="601" alt="p4" src="https://github.com/user-attachments/assets/6f505606-28d9-4df4-b2e1-35c0914afefc">

### Task 5
Write an SQL query that displays the id attribute, the date attribute, and the JSON object {"id": <row id attribute>, "date": <row date attribute>} for the order table. Use the function to create the JSON object.

```
SELECT 
    id,
    date,
    JSON_OBJECT('id', id, 'date', date) AS json_object
FROM orders;
```
<img width="541" alt="p5" src="https://github.com/user-attachments/assets/77f48818-2c9f-4c6b-a8f3-b854eaec42ba">
