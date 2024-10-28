SELECT SUM(Total_Amount) AS Income
FROM Bills;

SELECT SUM(Total_Amount) AS 'Feb Income'
FROM Bills
WHERE Bill_Date BETWEEN 160201 AND 160229;

SELECT AVG(Total_Amount) AS Average_Bill
FROM Bills;

SELECT MIN(Covers) AS Min, MAX(Covers) AS Max, AVG(Covers) AS Avg
FROM Rooms
WHERE Room_Name = 'Blue';

SELECT COUNT(DISTINCT Table_No)
FROM Bills
WHERE Waiter_No IN ('004', '002');