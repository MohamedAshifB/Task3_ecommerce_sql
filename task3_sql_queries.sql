use ecommerce;

select * from esd;

SELECT COUNT(*) AS Delayed_Deliveries
FROM ESD
WHERE Reached_on_Time_Y_N = 0;

SELECT Product_importance, AVG(Cost_of_the_Product) AS Avg_Cost
FROM ESD
GROUP BY Product_importance;

SELECT Mode_of_Shipment, COUNT(*) AS Total_Shipments
FROM ESD
GROUP BY Mode_of_Shipment
ORDER BY Total_Shipments DESC;

SELECT ID, Weight_in_gms
FROM ESD
ORDER BY Weight_in_gms DESC
LIMIT 5;

SELECT *
FROM ESD
WHERE Customer_rating = 5 AND ID IN (
    SELECT ID
    FROM ESD
    WHERE Reached_on_Time_Y_N = 0
);


CREATE VIEW Avg_Discount_By_Gender AS
SELECT Gender, AVG(Discount_offered) AS Avg_Discount
FROM ESD
GROUP BY Gender;
SELECT * FROM Avg_Discount_By_Gender;

CREATE INDEX idx_mode_of_shipment ON ESD (Mode_of_Shipment);

SELECT ID,
       Cost_of_the_Product - Discount_offered AS Estimated_Revenue
FROM ESD;


SELECT AVG(Cost_of_the_Product - Discount_offered) AS Avg_Revenue
FROM ESD;

