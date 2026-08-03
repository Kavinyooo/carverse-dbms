-- ===========================================
-- CarVerse - Car Showroom Management Database
-- Author: Kavin Shah
-- ===========================================

DROP DATABASE IF EXISTS CarVerse;

CREATE DATABASE CarVerse;

USE CarVerse;

-- ===========================================
-- BRAND
-- ===========================================

CREATE TABLE Brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL UNIQUE,
    country VARCHAR(50) NOT NULL
);

-- ===========================================
-- CAR TYPE
-- ===========================================

CREATE TABLE Car_Type (
    type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(30) NOT NULL UNIQUE
);

-- ===========================================
-- MODEL
-- ===========================================

CREATE TABLE Model (
    model_id INT AUTO_INCREMENT PRIMARY KEY,

    brand_id INT NOT NULL,
    type_id INT NOT NULL,

    model_name VARCHAR(50) NOT NULL,
    model_year YEAR NOT NULL,

    FOREIGN KEY (brand_id)
        REFERENCES Brand(brand_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (type_id)
        REFERENCES Car_Type(type_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- ===========================================
-- CAR DETAILS
-- ===========================================

CREATE TABLE Car_Details (

    car_id INT AUTO_INCREMENT PRIMARY KEY,

    model_id INT NOT NULL,

    color VARCHAR(30) NOT NULL,

    fuel_type ENUM(
        'Petrol',
        'Diesel',
        'Hybrid',
        'Electric',
        'CNG'
    ) NOT NULL,

    transmission ENUM(
        'Manual',
        'Automatic'
    ) NOT NULL,

    engine_cc INT,

    mileage DECIMAL(5,2),

    seating_capacity INT,

    price DECIMAL(12,2) NOT NULL,

    FOREIGN KEY(model_id)
        REFERENCES Model(model_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- ===========================================
-- SHOWROOM
-- ===========================================

CREATE TABLE Showroom (

    showroom_id INT AUTO_INCREMENT PRIMARY KEY,

    showroom_name VARCHAR(80) NOT NULL,

    city VARCHAR(50) NOT NULL,

    address VARCHAR(200),

    phone VARCHAR(15)
);

-- ===========================================
-- STOCK
-- ===========================================

CREATE TABLE Stock (

    stock_id INT AUTO_INCREMENT PRIMARY KEY,

    showroom_id INT NOT NULL,

    car_id INT NOT NULL,

    quantity INT DEFAULT 0 CHECK(quantity>=0),

    FOREIGN KEY(showroom_id)
        REFERENCES Showroom(showroom_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY(car_id)
        REFERENCES Car_Details(car_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- ===========================================
-- EMPLOYEE
-- ===========================================

CREATE TABLE Employee (

    emp_id INT AUTO_INCREMENT PRIMARY KEY,

    showroom_id INT NOT NULL,

    emp_name VARCHAR(60) NOT NULL,

    designation VARCHAR(50),

    phone VARCHAR(15),

    salary DECIMAL(10,2),

    hire_date DATE,

    FOREIGN KEY(showroom_id)
        REFERENCES Showroom(showroom_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- ===========================================
-- CUSTOMER
-- ===========================================

CREATE TABLE Customer (

    customer_id INT AUTO_INCREMENT PRIMARY KEY,

    customer_name VARCHAR(60) NOT NULL,

    gender ENUM(
        'Male',
        'Female',
        'Other'
    ),

    phone VARCHAR(15) UNIQUE,

    email VARCHAR(100),

    city VARCHAR(50)
);

-- ===========================================
-- SALES
-- ===========================================

CREATE TABLE Sale (

    sale_id INT AUTO_INCREMENT PRIMARY KEY,

    customer_id INT NOT NULL,

    emp_id INT NOT NULL,

    stock_id INT NOT NULL,

    sale_date DATE NOT NULL,

    amount DECIMAL(12,2) NOT NULL,

    payment_mode ENUM(
        'Cash',
        'Card',
        'UPI',
        'Loan'
    ),

    FOREIGN KEY(customer_id)
        REFERENCES Customer(customer_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY(emp_id)
        REFERENCES Employee(emp_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY(stock_id)
        REFERENCES Stock(stock_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- ===========================================
-- END OF SCHEMA
-- ===========================================
