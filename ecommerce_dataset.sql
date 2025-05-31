
-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS Ecommerce;
USE Ecommerce;

-- Step 2: Create the ESD table
DROP TABLE IF EXISTS ESD;
CREATE TABLE ESD (
    ID INT PRIMARY KEY,
    Warehouse_block VARCHAR(5),
    Mode_of_Shipment VARCHAR(20),
    Customer_care_calls INT,
    Customer_rating INT,
    Cost_of_the_Product FLOAT,
    Prior_purchases INT,
    Product_importance VARCHAR(10),
    Gender VARCHAR(10),
    Discount_offered FLOAT,
    Weight_in_gms INT,
    Reached_on_Time_Y_N INT
);

-- Step 3: Insert sample data (50 rows)
INSERT INTO ESD VALUES
(1, 'A', 'Flight', 3, 5, 320.0, 2, 'high', 'Male', 10.0, 1500, 1),
(2, 'B', 'Ship', 2, 4, 280.0, 4, 'medium', 'Female', 5.0, 1200, 0),
(3, 'C', 'Flight', 1, 3, 300.0, 3, 'low', 'Male', 20.0, 900, 1),
(4, 'D', 'Road', 4, 2, 100.0, 5, 'medium', 'Female', 15.0, 1400, 0),
(5, 'F', 'Ship', 2, 5, 270.0, 1, 'high', 'Male', 10.0, 1600, 1),
(6, 'A', 'Road', 1, 4, 390.0, 0, 'low', 'Female', 8.0, 2000, 0),
(7, 'B', 'Flight', 3, 3, 320.0, 2, 'medium', 'Male', 7.0, 1600, 1),
(8, 'C', 'Ship', 2, 5, 310.0, 6, 'low', 'Female', 18.0, 1700, 1),
(9, 'D', 'Road', 5, 4, 180.0, 3, 'medium', 'Male', 9.0, 1100, 0),
(10, 'F', 'Flight', 4, 3, 275.0, 2, 'high', 'Female', 11.0, 1950, 1),
(11, 'A', 'Flight', 3, 5, 450.0, 3, 'medium', 'Male', 6.0, 2100, 1),
(12, 'B', 'Ship', 2, 4, 140.0, 1, 'low', 'Female', 4.0, 1300, 0),
(13, 'C', 'Road', 1, 3, 160.0, 2, 'high', 'Male', 10.0, 950, 1),
(14, 'D', 'Ship', 4, 2, 110.0, 5, 'medium', 'Female', 12.0, 1350, 0),
(15, 'F', 'Flight', 2, 5, 290.0, 1, 'low', 'Male', 13.0, 1850, 1),
(16, 'A', 'Road', 1, 4, 330.0, 0, 'medium', 'Female', 5.0, 1600, 0),
(17, 'B', 'Flight', 3, 3, 360.0, 3, 'low', 'Male', 8.0, 1750, 1),
(18, 'C', 'Ship', 2, 5, 260.0, 4, 'high', 'Female', 9.0, 1800, 1),
(19, 'D', 'Road', 5, 4, 190.0, 2, 'medium', 'Male', 14.0, 1000, 0),
(20, 'F', 'Flight', 4, 3, 310.0, 2, 'high', 'Female', 15.0, 1950, 1),
(21, 'A', 'Flight', 2, 5, 340.0, 1, 'high', 'Male', 10.0, 1600, 1),
(22, 'B', 'Ship', 1, 4, 130.0, 4, 'medium', 'Female', 6.0, 1200, 0),
(23, 'C', 'Road', 3, 3, 180.0, 3, 'low', 'Male', 16.0, 800, 1),
(24, 'D', 'Ship', 2, 2, 200.0, 5, 'high', 'Female', 10.0, 1450, 0),
(25, 'F', 'Flight', 1, 5, 400.0, 1, 'medium', 'Male', 12.0, 1900, 1),
(26, 'A', 'Road', 3, 4, 420.0, 0, 'low', 'Female', 7.0, 2050, 0),
(27, 'B', 'Flight', 4, 3, 290.0, 2, 'high', 'Male', 9.0, 1650, 1),
(28, 'C', 'Ship', 3, 5, 280.0, 6, 'medium', 'Female', 10.0, 1700, 1),
(29, 'D', 'Road', 4, 4, 210.0, 3, 'low', 'Male', 6.0, 1150, 0),
(30, 'F', 'Flight', 5, 3, 350.0, 2, 'medium', 'Female', 8.0, 1850, 1),
(31, 'A', 'Flight', 1, 5, 370.0, 2, 'high', 'Male', 7.0, 1500, 1),
(32, 'B', 'Ship', 2, 4, 180.0, 4, 'low', 'Female', 5.0, 1250, 0),
(33, 'C', 'Road', 3, 3, 190.0, 3, 'medium', 'Male', 14.0, 1000, 1),
(34, 'D', 'Ship', 1, 2, 230.0, 5, 'high', 'Female', 11.0, 1450, 0),
(35, 'F', 'Flight', 2, 5, 310.0, 1, 'low', 'Male', 10.0, 1700, 1),
(36, 'A', 'Road', 3, 4, 340.0, 0, 'medium', 'Female', 12.0, 1950, 0),
(37, 'B', 'Flight', 2, 3, 380.0, 2, 'high', 'Male', 8.0, 1600, 1),
(38, 'C', 'Ship', 1, 5, 290.0, 6, 'medium', 'Female', 9.0, 1800, 1),
(39, 'D', 'Road', 4, 4, 250.0, 3, 'low', 'Male', 10.0, 1050, 0),
(40, 'F', 'Flight', 5, 3, 300.0, 2, 'medium', 'Female', 13.0, 1900, 1),
(41, 'A', 'Flight', 2, 5, 330.0, 1, 'high', 'Male', 6.0, 1550, 1),
(42, 'B', 'Ship', 1, 4, 160.0, 4, 'low', 'Female', 7.0, 1350, 0),
(43, 'C', 'Road', 3, 3, 170.0, 3, 'medium', 'Male', 10.0, 950, 1),
(44, 'D', 'Ship', 2, 2, 210.0, 5, 'high', 'Female', 15.0, 1500, 0),
(45, 'F', 'Flight', 4, 5, 290.0, 1, 'low', 'Male', 9.0, 1800, 1),
(46, 'A', 'Road', 3, 4, 400.0, 0, 'medium', 'Female', 11.0, 2000, 0),
(47, 'B', 'Flight', 2, 3, 310.0, 2, 'high', 'Male', 13.0, 1750, 1),
(48, 'C', 'Ship', 1, 5, 270.0, 6, 'medium', 'Female', 14.0, 1650, 1),
(49, 'D', 'Road', 5, 4, 230.0, 3, 'low', 'Male', 8.0, 1000, 0),
(50, 'F', 'Flight', 4, 3, 360.0, 2, 'medium', 'Female', 10.0, 1900, 1);
