SELECT CONCAT(first_name, ' ', surname) AS Staff_Name
FROM restStaff
JOIN restBill ON restStaff.staff_no = restBill.waiter_no
WHERE cust_name = 'Tanya Singh';

SELECT DISTINCT room_date
FROM restRoom_management
JOIN restStaff ON restRoom_management.headwaiter = restStaff.staff_no
WHERE restStaff.first_name = 'Charles'
  AND room_name = 'Green'
  AND room_date BETWEEN 160201 AND 160229;

SELECT CONCAT(s1.first_name, ' ', s1.surname) AS Staff_Name
FROM restStaff s1
JOIN restStaff s2 ON s1.headwaiter = s2.headwaiter
WHERE s2.first_name = 'Zoe' AND s2.surname = 'Ball';

SELECT cust_name, bill_total, CONCAT(first_name, ' ', surname) AS Staff_Name
FROM restBill
JOIN restStaff ON restBill.waiter_no = restStaff.staff_no
ORDER BY bill_total DESC;

SELECT CONCAT(first_name, ' ', surname) AS Staff_Name
FROM restStaff
JOIN restBill ON restStaff.headwaiter = restBill.headwaiter
WHERE restBill.bill_no IN (14, 17);

SELECT CONCAT(s.first_name, ' ', s.surname) AS Staff_Name
FROM restStaff s
JOIN restRoom_management rm ON s.staff_no = rm.headwaiter
WHERE rm.room_date = 160312 AND rm.room_name = 'Blue'

UNION

SELECT CONCAT(s.first_name, ' ', s.surname) AS Staff_Name
FROM restStaff s
JOIN restRoom_management rm ON s.headwaiter = rm.headwaiter
WHERE rm.room_date = 160312 AND rm.room_name = 'Blue';