USE CarVerse;

-- ==========================================
-- VIEW 1 : Available Stock
-- ==========================================

CREATE VIEW Available_Stock AS
SELECT
    s.stock_id,
    sh.showroom_name,
    b.brand_name,
    m.model_name,
    cd.price,
    s.quantity
FROM Stock s
JOIN Showroom sh ON s.showroom_id = sh.showroom_id
JOIN Car_Details cd ON s.car_id = cd.car_id
JOIN Model m ON cd.model_id = m.model_id
JOIN Brand b ON m.brand_id = b.brand_id;

-- ==========================================
-- VIEW 2 : Customer Purchases
-- ==========================================

CREATE VIEW Customer_Purchases AS
SELECT
    c.customer_name,
    b.brand_name,
    m.model_name,
    sa.sale_date,
    sa.amount
FROM Sale sa
JOIN Customer c ON sa.customer_id = c.customer_id
JOIN Stock st ON sa.stock_id = st.stock_id
JOIN Car_Details cd ON st.car_id = cd.car_id
JOIN Model m ON cd.model_id = m.model_id
JOIN Brand b ON m.brand_id = b.brand_id;

-- ==========================================
-- VIEW 3 : Employee Sales
-- ==========================================

CREATE VIEW Employee_Sales AS
SELECT
    e.emp_name,
    COUNT(sa.sale_id) AS total_sales,
    SUM(sa.amount) AS revenue_generated
FROM Employee e
LEFT JOIN Sale sa
ON e.emp_id = sa.emp_id
GROUP BY e.emp_id;

-- ==========================================
-- VIEW 4 : Brand Statistics
-- ==========================================

CREATE VIEW Brand_Statistics AS
SELECT
    b.brand_name,
    COUNT(cd.car_id) AS total_models,
    AVG(cd.price) AS average_price
FROM Brand b
JOIN Model m ON b.brand_id = m.brand_id
JOIN Car_Details cd ON m.model_id = cd.model_id
GROUP BY b.brand_name;

-- ==========================================
-- VIEW 5 : Showroom Inventory
-- ==========================================

CREATE VIEW Showroom_Inventory AS
SELECT
    sh.showroom_name,
    SUM(st.quantity) AS total_vehicles
FROM Showroom sh
JOIN Stock st
ON sh.showroom_id = st.showroom_id
GROUP BY sh.showroom_name;
