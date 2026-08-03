USE CarVerse;

DELIMITER $$

-- ==========================================
-- Procedure 1 : Cars by Brand
-- ==========================================

CREATE PROCEDURE GetCarsByBrand(
    IN brand VARCHAR(50)
)
BEGIN

SELECT
    b.brand_name,
    m.model_name,
    cd.price
FROM Brand b
JOIN Model m
ON b.brand_id = m.brand_id
JOIN Car_Details cd
ON m.model_id = cd.model_id
WHERE b.brand_name = brand;

END $$

-- ==========================================
-- Procedure 2 : Cars in Price Range
-- ==========================================

CREATE PROCEDURE GetCarsByPrice(
    IN minPrice DECIMAL(12,2),
    IN maxPrice DECIMAL(12,2)
)
BEGIN

SELECT
    m.model_name,
    cd.price
FROM Car_Details cd
JOIN Model m
ON cd.model_id = m.model_id
WHERE cd.price BETWEEN minPrice AND maxPrice;

END $$

-- ==========================================
-- Procedure 3 : Customer Purchase History
-- ==========================================

CREATE PROCEDURE CustomerHistory(
    IN cust INT
)
BEGIN

SELECT
    c.customer_name,
    b.brand_name,
    m.model_name,
    sa.sale_date,
    sa.amount
FROM Sale sa
JOIN Customer c
ON sa.customer_id = c.customer_id
JOIN Stock st
ON sa.stock_id = st.stock_id
JOIN Car_Details cd
ON st.car_id = cd.car_id
JOIN Model m
ON cd.model_id = m.model_id
JOIN Brand b
ON m.brand_id = b.brand_id
WHERE c.customer_id = cust;

END $$

-- ==========================================
-- Procedure 4 : Employee Revenue
-- ==========================================

CREATE PROCEDURE EmployeeRevenue()
BEGIN

SELECT
    e.emp_name,
    SUM(sa.amount) AS TotalRevenue
FROM Employee e
LEFT JOIN Sale sa
ON e.emp_id = sa.emp_id
GROUP BY e.emp_id
ORDER BY TotalRevenue DESC;

END $$

DELIMITER ;
