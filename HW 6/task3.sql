SELECT Staff_Name
FROM Staff
JOIN Bills ON Staff.Staff_No = Bills.Waiter_No
WHERE Customer_Name = 'Tanya Singh';

SELECT DISTINCT Room_Date
FROM Room_Allocations
WHERE Headwaiter = (SELECT Staff_No FROM Staff WHERE Staff_Name = 'Charles')
  AND Room_Name = 'Green'
  AND Room_Date BETWEEN 160201 AND 160229;

SELECT Staff_Name
FROM Staff
WHERE Headwaiter = (SELECT Headwaiter FROM Staff WHERE Staff_Name = 'Zoe Ball');

SELECT Customer_Name, Total_Amount, Staff_Name
FROM Bills
JOIN Staff ON Bills.Waiter_No = Staff.Staff_No
ORDER BY Total_Amount DESC;

SELECT Staff_Name
FROM Staff
WHERE Headwaiter IN (
  SELECT Headwaiter
  FROM Bills
  WHERE Bill_No IN (00014, 00017)
);

SELECT Staff_Name
FROM Staff
WHERE Staff_No IN (
  SELECT Headwaiter
  FROM Room_Allocations
  WHERE Room_Date = 160312
    AND Room_Name = 'Blue'
)
UNION
SELECT Staff_Name
FROM Staff
WHERE Headwaiter IN (
  SELECT Headwaiter
  FROM Room_Allocations
  WHERE Room_Date = 160312
    AND Room_Name = 'Blue'
);