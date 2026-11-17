-- ============================================================================
-- Question 5: Write a SQL query to display records using WHERE clause with relational and logical operators.
-- ============================================================================

-- Select the database
USE university;

-- Display records using WHERE clause with relational (=) and logical (AND) operators
SELECT * FROM students 
WHERE class_name = 'B.Sc. (Computer Science)' AND dept_id = 100013;

/*
Output:
+------------+--------------+----------------+--------------------------+---------+
| student_id | student_name | phone_number   | class_name               | dept_id |
+------------+--------------+----------------+--------------------------+---------+
|          1 | Aarav Sharma | +91 9000000001 | B.Sc. (Computer Science) |  100013 |
+------------+--------------+----------------+--------------------------+---------+
1 row in set (0.002 sec)
*/
