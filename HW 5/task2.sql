SELECT SUM(bill_total) AS Income
FROM restBill;

SELECT SUM(bill_total) AS 'Feb Income'
FROM restBill
WHERE bill_date BETWEEN 160201 AND 160229;

SELECT AVG(bill_total) AS Average_Bill
FROM restBill;

SELECT MIN(covers) AS Min, MAX(covers) AS Max, AVG(covers) AS Avg
FROM restBill
WHERE table_no IN (
    SELECT table_no
    FROM restRest_table
    WHERE room_name = 'Blue'
);

SELECT COUNT(DISTINCT table_no)
FROM restBill
WHERE waiter_no IN (4, 2);