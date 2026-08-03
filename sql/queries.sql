-- ==========================================
-- CarVerse DBMS
-- queries.sql
-- ==========================================

USE CarVerse;

-- ======================================================
-- BASIC QUERIES
-- ======================================================

-- 1
SELECT * FROM Brand;

-- 2
SELECT * FROM Car_Type;

-- 3
SELECT * FROM Model;

-- 4
SELECT * FROM Car_Details;

-- 5
SELECT * FROM Customer;

-- 6
SELECT * FROM Employee;

-- 7
SELECT * FROM Sale;

-- 8
SELECT * FROM Stock;

-- 9
SELECT * FROM Showroom;

-- 10
SELECT * FROM Car_Details
ORDER BY price DESC;

-- ======================================================
-- FILTERING
-- ======================================================

-- 11
SELECT *
FROM Car_Details
WHERE price > 1500000;

-- 12
SELECT *
FROM Car_Details
WHERE transmission='Automatic';

-- 13
SELECT *
FROM Car_Details
WHERE fuel_type='Diesel';

-- 14
SELECT *
FROM Car_Details
WHERE fuel_type='Electric';

-- 15
SELECT *
FROM Customer
WHERE city='Ahmedabad';

-- 16
SELECT *
FROM Employee
WHERE designation='Manager';

-- ======================================================
-- AGGREGATE FUNCTIONS
-- ======================================================

-- 17
SELECT COUNT(*) AS TotalCars
FROM Car_Details;

-- 18
SELECT AVG(price) AS AveragePrice
FROM Car_Details;

-- 19
SELECT MAX(price) AS CostliestCar
FROM Car_Details;

-- 20
SELECT MIN(price) AS CheapestCar
FROM Car_Details;

-- 21
SELECT SUM(amount) AS TotalRevenue
FROM Sale;

-- ======================================================
-- JOINS
-- ======================================================

-- 22
SELECT
Brand.brand_name,
Model.model_name
FROM Brand
JOIN Model
ON Brand.brand_id=Model.brand_id;

-- 23
SELECT
Model.model_name,
Car_Details.price
FROM Model
JOIN Car_Details
ON Model.model_id=Car_Details.model_id;

-- 24
SELECT
Showroom.showroom_name,
Stock.quantity
FROM Showroom
JOIN Stock
ON Showroom.showroom_id=Stock.showroom_id;

-- 25
SELECT
Employee.emp_name,
Showroom.showroom_name
FROM Employee
JOIN Showroom
ON Employee.showroom_id=Showroom.showroom_id;

-- ======================================================
-- MULTI TABLE JOINS
-- ======================================================

-- 26
SELECT
Customer.customer_name,
Brand.brand_name,
Model.model_name,
Sale.amount
FROM Sale
JOIN Customer
ON Sale.customer_id=Customer.customer_id
JOIN Stock
ON Sale.stock_id=Stock.stock_id
JOIN Car_Details
ON Stock.car_id=Car_Details.car_id
JOIN Model
ON Car_Details.model_id=Model.model_id
JOIN Brand
ON Model.brand_id=Brand.brand_id;

-- 27
SELECT
Brand.brand_name,
AVG(Car_Details.price)
FROM Brand
JOIN Model
ON Brand.brand_id=Model.brand_id
JOIN Car_Details
ON Model.model_id=Car_Details.model_id
GROUP BY Brand.brand_name;

-- ======================================================
-- GROUP BY
-- ======================================================

-- 28
SELECT
city,
COUNT(*)
FROM Customer
GROUP BY city;

-- 29
SELECT
showroom_id,
COUNT(*)
FROM Employee
GROUP BY showroom_id;

-- 30
SELECT
fuel_type,
COUNT(*)
FROM Car_Details
GROUP BY fuel_type;

-- ======================================================
-- HAVING
-- ======================================================

-- 31
SELECT
city,
COUNT(*)
FROM Customer
GROUP BY city
HAVING COUNT(*)>5;

-- 32
SELECT
Brand.brand_name,
AVG(Car_Details.price)
FROM Brand
JOIN Model
ON Brand.brand_id=Model.brand_id
JOIN Car_Details
ON Model.model_id=Car_Details.model_id
GROUP BY Brand.brand_name
HAVING AVG(Car_Details.price)>2000000;

-- ======================================================
-- SUBQUERIES
-- ======================================================

-- 33
SELECT *
FROM Car_Details
WHERE price=
(
SELECT MAX(price)
FROM Car_Details
);

-- 34
SELECT *
FROM Employee
WHERE salary>
(
SELECT AVG(salary)
FROM Employee
);

-- 35
SELECT *
FROM Customer
WHERE customer_id IN
(
SELECT customer_id
FROM Sale
);

-- ======================================================
-- REPORTS
-- ======================================================

-- 36
SELECT
Employee.emp_name,
COUNT(Sale.sale_id) AS TotalSales
FROM Employee
LEFT JOIN Sale
ON Employee.emp_id=Sale.emp_id
GROUP BY Employee.emp_name;

-- 37
SELECT
Employee.emp_name,
SUM(Sale.amount) AS Revenue
FROM Employee
JOIN Sale
ON Employee.emp_id=Sale.emp_id
GROUP BY Employee.emp_name
ORDER BY Revenue DESC;

-- 38
SELECT
Brand.brand_name,
COUNT(*) AS CarsSold
FROM Sale
JOIN Stock
ON Sale.stock_id=Stock.stock_id
JOIN Car_Details
ON Stock.car_id=Car_Details.car_id
JOIN Model
ON Car_Details.model_id=Model.model_id
JOIN Brand
ON Model.brand_id=Brand.brand_id
GROUP BY Brand.brand_name
ORDER BY CarsSold DESC;

-- 39
SELECT
Showroom.showroom_name,
SUM(Stock.quantity)
FROM Showroom
JOIN Stock
ON Showroom.showroom_id=Stock.showroom_id
GROUP BY Showroom.showroom_name;

-- ======================================================
-- STRING FUNCTIONS
-- ======================================================

-- 40
SELECT
UPPER(customer_name)
FROM Customer;

-- 41
SELECT
LOWER(brand_name)
FROM Brand;

-- ======================================================
-- DATE FUNCTIONS
-- ======================================================

-- 42
SELECT
YEAR(sale_date)
FROM Sale;

-- 43
SELECT
MONTH(sale_date)
FROM Sale;

-- ======================================================
-- ORDERING
-- ======================================================

-- 44
SELECT *
FROM Sale
ORDER BY amount DESC;

-- 45
SELECT *
FROM Customer
ORDER BY customer_name;

-- ======================================================
-- LIMIT
-- ======================================================

-- 46
SELECT *
FROM Car_Details
ORDER BY price DESC
LIMIT 5;

-- ======================================================
-- DISTINCT
-- ======================================================

-- 47
SELECT DISTINCT city
FROM Customer;

-- ======================================================
-- LIKE
-- ======================================================

-- 48
SELECT *
FROM Brand
WHERE brand_name LIKE 'M%';

-- ======================================================
-- BETWEEN
-- ======================================================

-- 49
SELECT *
FROM Car_Details
WHERE price BETWEEN 1000000 AND 3000000;

-- ======================================================
-- IN
-- ======================================================

-- 50
SELECT *
FROM Customer
WHERE city IN
('Ahmedabad','Surat','Mumbai');
