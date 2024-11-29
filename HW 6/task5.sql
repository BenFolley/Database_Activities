SELECT s.first_name, s.surname, b.bill_date, COUNT(b.bill_no) AS number_of_bills
FROM restBill AS b
JOIN restStaff AS s ON b.waiter_no = s.staff_no
GROUP BY s.first_name, s.surname, b.bill_date
HAVING COUNT(b.bill_no) >= 2;

SELECT rt.room_name, COUNT(rt.table_no) AS table_count
FROM restRest_table AS rt
WHERE rt.no_of_seats > 6
GROUP BY rt.room_name;

SELECT rt.room_name, SUM(b.bill_total) AS total_bill_amount
FROM restBill AS b
JOIN restRest_table AS rt ON b.table_no = rt.table_no
GROUP BY rt.room_name;

SELECT hw.first_name, hw.surname, SUM(b.bill_total) AS total_bill_amount
FROM restStaff AS hw
JOIN restStaff AS w ON hw.staff_no = w.headwaiter
JOIN restBill AS b ON w.staff_no = b.waiter_no
GROUP BY hw.first_name, hw.surname
ORDER BY total_bill_amount DESC;

SELECT b.cust_name
FROM restBill AS b
GROUP BY b.cust_name
HAVING AVG(b.bill_total) > 400;

SELECT s.first_name, s.surname, COUNT(b.bill_no) AS number_of_bills
FROM restBill AS b
JOIN restStaff AS s ON b.waiter_no = s.staff_no
GROUP BY s.first_name, s.surname, b.bill_date
HAVING COUNT(b.bill_no) >= 3;