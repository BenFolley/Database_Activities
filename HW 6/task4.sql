SELECT b.cust_name
FROM restBill AS b
JOIN restStaff AS w ON b.waiter_no = w.staff_no
JOIN restStaff AS hw ON w.headwaiter = hw.staff_no
WHERE b.bill_total > 450.00
  AND hw.first_name = 'Charles';

SELECT hw.first_name, hw.surname
FROM restBill AS b
JOIN restStaff AS w ON b.waiter_no = w.staff_no
JOIN restStaff AS hw ON w.headwaiter = hw.staff_no
WHERE b.cust_name = 'Nerida Smith'
  AND b.bill_date = 160111;

SELECT b.cust_name
FROM restBill AS b
WHERE b.bill_total = (SELECT MIN(bill_total) FROM restBill);

SELECT s.first_name, s.surname
FROM restStaff AS s
LEFT JOIN restBill AS b ON s.staff_no = b.waiter_no
WHERE b.waiter_no IS NULL;

SELECT b.cust_name, hw.first_name AS headwaiter_first_name, hw.surname AS headwaiter_surname, rt.room_name
FROM restBill AS b
JOIN restStaff AS w ON b.waiter_no = w.staff_no
JOIN restStaff AS hw ON w.headwaiter = hw.staff_no
JOIN restRest_table AS rt ON b.table_no = rt.table_no
WHERE b.bill_total = (SELECT MAX(bill_total) FROM restBill);