-- Data manipulation query types
-- 
-- Run this file using this command:
-- $ db2 -td@ -f [filename]
-- 
-- [0/2] Aggregate functions
-- [0/1] VIEW
-- [0/1] Subquery / Nested query
-- [1/1] Triggers
-- [0/1] Stored Procedure
-- [0/4] Queries not covered in lecture/tutorial/lab
-- 


-- update number of people in booking whenever an insert occurs
CREATE OR REPLACE TRIGGER booking_number_of_people
AFTER INSERT ON Booking
FOR EACH ROW MODE DB2SQL
BEGIN
    UPDATE Booking b SET number_of_people = (SELECT COUNT(*) FROM Dependants d WHERE d.customer_id = b.customer_id);
END@