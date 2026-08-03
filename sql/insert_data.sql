-- =========================================
-- CAR TYPES
-- =========================================

INSERT INTO Car_Type(type_name) VALUES
('Hatchback'),
('Sedan'),
('SUV'),
('MPV'),
('Luxury'),
('Sports');

-- =========================================
-- BRANDS
-- =========================================

INSERT INTO Brand(brand_name,country) VALUES
('Maruti Suzuki','India'),
('Hyundai','South Korea'),
('Honda','Japan'),
('Toyota','Japan'),
('Tata','India'),
('Mahindra','India'),
('Kia','South Korea'),
('MG','United Kingdom'),
('Volkswagen','Germany'),
('Skoda','Czech Republic'),
('BMW','Germany'),
('Mercedes-Benz','Germany'),
('Audi','Germany'),
('Volvo','Sweden'),
('Jeep','USA'),
('Renault','France'),
('Nissan','Japan'),
('Ford','USA'),
('Chevrolet','USA'),
('Citroen','France'),
('BYD','China'),
('Lexus','Japan'),
('Porsche','Germany'),
('Ferrari','Italy'),
('Lamborghini','Italy'),
('Rolls-Royce','United Kingdom'),
('Bentley','United Kingdom'),
('Jaguar','United Kingdom'),
('Land Rover','United Kingdom'),
('Mini','United Kingdom'),
('Mitsubishi','Japan'),
('Isuzu','Japan'),
('Peugeot','France'),
('Fiat','Italy'),
('Datsun','Japan'),
('Bugatti','France'),
('Aston Martin','United Kingdom'),
('Tesla','USA'),
('VinFast','Vietnam'),
('Koenigsegg','Sweden');

INSERT INTO Model(brand_id,type_id,model_name,model_year) VALUES
(1,1,'Swift',2024),
(1,1,'Baleno',2024),
(1,2,'Ciaz',2024),
(1,3,'Brezza',2024),

(2,1,'i20',2024),
(2,2,'Verna',2024),
(2,3,'Creta',2024),
(2,3,'Venue',2024),

(3,2,'City',2024),
(3,3,'Elevate',2024),
(3,1,'Amaze',2024),

(4,3,'Fortuner',2024),
(4,2,'Camry',2024),
(4,3,'Hyryder',2024),

(5,3,'Harrier',2024),
(5,3,'Safari',2024),
(5,1,'Tiago',2024),
(5,1,'Altroz',2024),

(6,3,'Scorpio N',2024),
(6,3,'XUV700',2024),
(6,3,'Thar',2024),

(7,3,'Seltos',2024),
(7,2,'Carens',2024),
(7,3,'Sonet',2024),

(8,3,'Hector',2024),
(8,3,'Astor',2024),

(9,2,'Virtus',2024),
(9,3,'Taigun',2024),

(10,2,'Slavia',2024),
(10,3,'Kushaq',2024),

(11,5,'X5',2024),
(11,5,'3 Series',2024),

(12,5,'C-Class',2024),
(12,5,'GLA',2024),

(13,5,'A4',2024),
(13,5,'Q5',2024),

(14,5,'XC60',2024),

(15,3,'Compass',2024),

(38,5,'Model 3',2024),
(38,5,'Model Y',2024);

INSERT INTO Car_Details
(model_id,color,fuel_type,transmission,engine_cc,mileage,seating_capacity,price)
VALUES
-- Maruti
(1,'White','Petrol','Manual',1197,22.5,5,650000),
(1,'Blue','Petrol','Automatic',1197,21.8,5,720000),
(2,'Silver','Petrol','Manual',1197,23.1,5,760000),
(2,'Black','Petrol','Automatic',1197,22.2,5,850000),
(3,'White','Petrol','Manual',1462,20.2,5,950000),
(4,'Red','Petrol','Automatic',1462,18.7,5,1180000),

-- Hyundai
(5,'Grey','Petrol','Manual',1197,20.5,5,780000),
(5,'White','Petrol','Automatic',1197,19.6,5,870000),
(6,'Black','Petrol','Manual',1497,18.3,5,1160000),
(7,'Blue','Diesel','Automatic',1493,19.1,5,1850000),
(8,'Silver','Petrol','Manual',998,19.9,5,950000),

-- Honda
(9,'White','Petrol','Manual',1498,17.8,5,1260000),
(9,'Black','Petrol','Automatic',1498,18.4,5,1420000),
(10,'Grey','Petrol','Manual',1498,16.9,5,1550000),
(11,'Red','Petrol','Manual',1199,18.8,5,850000),

-- Toyota
(12,'Black','Diesel','Automatic',2755,14.5,7,4200000),
(12,'White','Diesel','Automatic',2755,14.5,7,4350000),
(13,'Silver','Hybrid','Automatic',2487,22.8,5,4800000),
(14,'White','Hybrid','Automatic',1490,26.1,5,1850000),

-- Tata
(15,'Dark Grey','Diesel','Manual',1956,16.5,5,1950000),
(16,'Black','Diesel','Automatic',1956,15.8,7,2450000),
(17,'Yellow','Petrol','Manual',1199,20.2,5,620000),
(18,'Blue','Petrol','Manual',1199,19.8,5,710000),

-- Mahindra
(19,'White','Diesel','Manual',2198,15.2,7,1850000),
(20,'Black','Diesel','Automatic',2198,16.4,7,2650000),
(21,'Red','Diesel','Manual',2184,14.8,4,1750000),

-- Kia
(22,'White','Petrol','Manual',1497,17.5,5,1480000),
(23,'Grey','Petrol','Automatic',1497,16.9,7,1850000),
(24,'Orange','Petrol','Manual',998,18.4,5,980000),

-- MG
(25,'White','Petrol','Automatic',1451,14.5,5,1980000),
(26,'Red','Petrol','Automatic',1498,15.3,5,1720000),

-- Volkswagen
(27,'Silver','Petrol','Automatic',1498,18.2,5,1650000),
(28,'Grey','Petrol','Automatic',1498,17.4,5,1780000),

-- Skoda
(29,'White','Petrol','Automatic',1498,18.1,5,1720000),
(30,'Blue','Petrol','Automatic',1498,17.9,5,1840000),

-- BMW
(31,'Black','Petrol','Automatic',2998,12.4,5,9800000),
(32,'White','Petrol','Automatic',1998,15.1,5,6400000),

-- Mercedes
(33,'Silver','Petrol','Automatic',1991,14.8,5,6700000),
(34,'White','Petrol','Automatic',1991,15.2,5,5900000),

-- Audi
(35,'Grey','Petrol','Automatic',1984,15.0,5,6100000),
(36,'Black','Petrol','Automatic',1984,14.6,5,7200000),

-- Volvo
(37,'White','Hybrid','Automatic',1969,18.3,5,7200000),

-- Jeep
(38,'Black','Diesel','Automatic',1956,16.2,5,3200000),

-- Tesla
(39,'White','Electric','Automatic',0,0,5,6500000),
(40,'Blue','Electric','Automatic',0,0,5,7200000);

INSERT INTO Showroom
(showroom_name,city,address,phone)
VALUES
('CarVerse Ahmedabad','Ahmedabad','SG Highway','9876500001'),

('CarVerse Surat','Surat','Ring Road','9876500002'),

('CarVerse Vadodara','Vadodara','Alkapuri','9876500003'),

('CarVerse Rajkot','Rajkot','Kalawad Road','9876500004'),

('CarVerse Mumbai','Mumbai','Andheri West','9876500005');

INSERT INTO Employee
(showroom_id,emp_name,designation,phone,salary,hire_date)
VALUES
(1,'Rahul Shah','Sales Executive','9876000001',35000,'2023-01-12'),
(1,'Priya Patel','Manager','9876000002',65000,'2021-03-08'),
(1,'Jay Mehta','Technician','9876000003',32000,'2022-06-11'),
(1,'Harsh Joshi','Sales Executive','9876000004',36000,'2024-01-15'),
(1,'Neha Trivedi','Receptionist','9876000005',28000,'2023-09-10'),

(2,'Aman Verma','Manager','9876000011',68000,'2020-05-19'),
(2,'Riya Singh','Sales Executive','9876000012',37000,'2022-04-02'),
(2,'Yash Patel','Technician','9876000013',33000,'2023-11-18'),
(2,'Krishna Shah','Sales Executive','9876000014',35500,'2024-02-01'),
(2,'Mihir Desai','Receptionist','9876000015',29000,'2023-05-13'),

(3,'Dev Shah','Manager','9876000021',70000,'2019-12-21'),
(3,'Karan Mehta','Sales Executive','9876000022',36000,'2022-03-01'),
(3,'Dhruv Patel','Technician','9876000023',34000,'2022-09-17'),
(3,'Nidhi Shah','Sales Executive','9876000024',35000,'2023-06-22'),
(3,'Pooja Mehta','Receptionist','9876000025',28500,'2024-01-03'),

(4,'Vivek Sharma','Manager','9876000031',69000,'2020-02-12'),
(4,'Sneha Patel','Sales Executive','9876000032',35500,'2022-10-08'),
(4,'Aakash Shah','Technician','9876000033',32500,'2023-01-27'),
(4,'Bhavya Patel','Sales Executive','9876000034',36000,'2023-08-15'),
(4,'Anjali Shah','Receptionist','9876000035',29000,'2024-04-12'),

(5,'Rohan Kapoor','Manager','9876000041',72000,'2019-05-04'),
(5,'Ishita Jain','Sales Executive','9876000042',37500,'2021-07-09'),
(5,'Amit Gupta','Technician','9876000043',34500,'2022-08-18'),
(5,'Mehul Shah','Sales Executive','9876000044',36500,'2024-02-20'),
(5,'Khushi Patel','Receptionist','9876000045',30000,'2023-10-05');

INSERT INTO Stock
(showroom_id,car_id,quantity)
VALUES
(1,1,6),
(1,2,5),
(1,3,7),
(1,4,4),
(1,5,6),
(1,6,3),
(1,7,8),
(1,8,5),

(2,9,4),
(2,10,6),
(2,11,5),
(2,12,2),
(2,13,3),
(2,14,5),
(2,15,4),
(2,16,3),

(3,17,8),
(3,18,5),
(3,19,4),
(3,20,3),
(3,21,5),
(3,22,4),
(3,23,5),
(3,24,6),

(4,25,4),
(4,26,5),
(4,27,3),
(4,28,6),
(4,29,5),
(4,30,4),
(4,31,2),
(4,32,2),

(5,33,2),
(5,34,3),
(5,35,2),
(5,36,2),
(5,37,1),
(5,38,3),
(5,39,2),
(5,40,2);

INSERT INTO Customer
(customer_name,gender,phone,email,city)
VALUES
('Aarav Shah','Male','9877000001','aarav@gmail.com','Ahmedabad'),
('Vivaan Patel','Male','9877000002','vivaan@gmail.com','Surat'),
('Aditya Mehta','Male','9877000003','aditya@gmail.com','Vadodara'),
('Krish Desai','Male','9877000004','krish@gmail.com','Rajkot'),
('Aryan Joshi','Male','9877000005','aryan@gmail.com','Mumbai'),

('Diya Patel','Female','9877000006','diya@gmail.com','Ahmedabad'),
('Ananya Shah','Female','9877000007','ananya@gmail.com','Surat'),
('Kiara Mehta','Female','9877000008','kiara@gmail.com','Vadodara'),
('Myra Shah','Female','9877000009','myra@gmail.com','Rajkot'),
('Aadhya Patel','Female','9877000010','aadhya@gmail.com','Mumbai'),

('Harsh Shah','Male','9877000011','harsh@gmail.com','Ahmedabad'),
('Yash Patel','Male','9877000012','yash@gmail.com','Surat'),
('Rohan Shah','Male','9877000013','rohan@gmail.com','Vadodara'),
('Dev Patel','Male','9877000014','dev@gmail.com','Rajkot'),
('Dhruv Mehta','Male','9877000015','dhruv@gmail.com','Mumbai'),

('Sneha Patel','Female','9877000016','sneha@gmail.com','Ahmedabad'),
('Pooja Shah','Female','9877000017','pooja@gmail.com','Surat'),
('Riya Patel','Female','9877000018','riya@gmail.com','Vadodara'),
('Khushi Shah','Female','9877000019','khushi@gmail.com','Rajkot'),
('Nidhi Patel','Female','9877000020','nidhi@gmail.com','Mumbai'),

('Rahul Patel','Male','9877000021','rahul@gmail.com','Ahmedabad'),
('Karan Shah','Male','9877000022','karan@gmail.com','Surat'),
('Mihir Patel','Male','9877000023','mihir@gmail.com','Vadodara'),
('Jay Shah','Male','9877000024','jay@gmail.com','Rajkot'),
('Vivek Patel','Male','9877000025','vivek@gmail.com','Mumbai'),

('Neha Shah','Female','9877000026','neha@gmail.com','Ahmedabad'),
('Ishita Patel','Female','9877000027','ishita@gmail.com','Surat'),
('Bhavya Shah','Female','9877000028','bhavya@gmail.com','Vadodara'),
('Anjali Patel','Female','9877000029','anjali@gmail.com','Rajkot'),
('Priya Shah','Female','9877000030','priya@gmail.com','Mumbai'),

('Amit Shah','Male','9877000031','amit@gmail.com','Ahmedabad'),
('Manan Patel','Male','9877000032','manan@gmail.com','Surat'),
('Akash Shah','Male','9877000033','akash@gmail.com','Vadodara'),
('Parth Patel','Male','9877000034','parth@gmail.com','Rajkot'),
('Meet Shah','Male','9877000035','meet@gmail.com','Mumbai'),

('Jinal Shah','Female','9877000036','jinal@gmail.com','Ahmedabad'),
('Hetal Patel','Female','9877000037','hetal@gmail.com','Surat'),
('Komal Shah','Female','9877000038','komal@gmail.com','Vadodara'),
('Riddhi Patel','Female','9877000039','riddhi@gmail.com','Rajkot'),
('Mansi Shah','Female','9877000040','mansi@gmail.com','Mumbai'),

('Sagar Patel','Male','9877000041','sagar@gmail.com','Ahmedabad'),
('Nirav Shah','Male','9877000042','nirav@gmail.com','Surat'),
('Pranav Patel','Male','9877000043','pranav@gmail.com','Vadodara'),
('Tushar Shah','Male','9877000044','tushar@gmail.com','Rajkot'),
('Kunal Patel','Male','9877000045','kunal@gmail.com','Mumbai'),

('Palak Shah','Female','9877000046','palak@gmail.com','Ahmedabad'),
('Nikita Patel','Female','9877000047','nikita@gmail.com','Surat'),
('Shruti Shah','Female','9877000048','shruti@gmail.com','Vadodara'),
('Rashi Patel','Female','9877000049','rashi@gmail.com','Rajkot'),
('Simran Shah','Female','9877000050','simran@gmail.com','Mumbai');

INSERT INTO Sale
(customer_id,emp_id,stock_id,sale_date,amount,payment_mode)
VALUES
(1,1,1,'2026-01-10',650000,'UPI'),
(2,2,2,'2026-01-12',720000,'Cash'),
(3,3,3,'2026-01-15',760000,'Card'),
(4,4,4,'2026-01-18',850000,'Loan'),
(5,5,5,'2026-01-20',950000,'UPI'),

(6,6,6,'2026-01-25',1180000,'Card'),
(7,7,7,'2026-02-02',780000,'Cash'),
(8,8,8,'2026-02-05',870000,'Loan'),
(9,9,9,'2026-02-10',1160000,'Card'),
(10,10,10,'2026-02-15',1850000,'UPI'),

(11,11,11,'2026-02-18',950000,'Cash'),
(12,12,12,'2026-02-20',1260000,'Card'),
(13,13,13,'2026-02-25',1420000,'Loan'),
(14,14,14,'2026-03-01',1550000,'UPI'),
(15,15,15,'2026-03-05',850000,'Cash'),

(16,16,16,'2026-03-08',4200000,'Card'),
(17,17,17,'2026-03-10',4350000,'Loan'),
(18,18,18,'2026-03-12',4800000,'UPI'),
(19,19,19,'2026-03-15',1850000,'Cash'),
(20,20,20,'2026-03-18',1950000,'Card'),

(21,21,21,'2026-03-22',2450000,'Loan'),
(22,22,22,'2026-03-25',620000,'Cash'),
(23,23,23,'2026-03-28',710000,'UPI'),
(24,24,24,'2026-04-02',1850000,'Card'),
(25,25,25,'2026-04-05',2650000,'Loan'),

(26,1,26,'2026-04-08',1750000,'Cash'),
(27,2,27,'2026-04-10',1480000,'Card'),
(28,3,28,'2026-04-12',1850000,'UPI'),
(29,4,29,'2026-04-15',980000,'Loan'),
(30,5,30,'2026-04-18',1980000,'Cash'),

(31,6,31,'2026-04-20',1720000,'Card'),
(32,7,32,'2026-04-22',1650000,'Loan'),
(33,8,33,'2026-04-25',1780000,'UPI'),
(34,9,34,'2026-04-28',1720000,'Cash'),
(35,10,35,'2026-05-01',1840000,'Card'),

(36,11,36,'2026-05-03',9800000,'Loan'),
(37,12,37,'2026-05-05',6400000,'UPI'),
(38,13,38,'2026-05-08',6700000,'Cash'),
(39,14,39,'2026-05-10',5900000,'Card'),
(40,15,40,'2026-05-12',6100000,'Loan'),

(41,16,1,'2026-05-15',7200000,'UPI'),
(42,17,2,'2026-05-18',7200000,'Card'),
(43,18,3,'2026-05-20',3200000,'Cash'),
(44,19,4,'2026-05-22',6500000,'Loan'),
(45,20,5,'2026-05-25',7200000,'UPI'),

(46,21,6,'2026-05-28',650000,'Cash'),
(47,22,7,'2026-06-01',850000,'Card'),
(48,23,8,'2026-06-05',1180000,'UPI'),
(49,24,9,'2026-06-08',1850000,'Loan'),
(50,25,10,'2026-06-10',2450000,'Cash'),

(51,1,11,'2026-06-12',1850000,'Card'),
(52,2,12,'2026-06-15',4200000,'Loan'),
(53,3,13,'2026-06-18',980000,'Cash'),
(54,4,14,'2026-06-20',1720000,'UPI'),
(55,5,15,'2026-06-22',2450000,'Card'),
(56,6,16,'2026-06-25',650000,'Cash'),
(57,7,17,'2026-06-28',720000,'UPI'),
(58,8,18,'2026-07-01',6100000,'Loan'),
(59,9,19,'2026-07-03',3200000,'Card'),
(60,10,20,'2026-07-05',1480000,'Cash');
