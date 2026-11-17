-- ============================================================================
-- Question 4: Write a SQL query to retrieve all records from a table using SELECT statement.
-- ============================================================================

-- Select the database
USE university;

-- Retrieve all records from the 'students' table
SELECT * FROM students;

/*
Output:
+------------+--------------+----------------+--------------------------+---------+
| student_id | student_name | phone_number   | class_name               | dept_id |
+------------+--------------+----------------+--------------------------+---------+
|          1 | Aarav Sharma | +91 9000000001 | B.Sc. (Computer Science) |  100013 |
|          2 | Rohan Verma  | +91 9000000002 | B.Sc. (Data Science)     |  100013 |
|          3 | Kabir Khan   | +91 9000000003 | B.Sc. (AI & ML)          |  100013 |
+------------+--------------+----------------+--------------------------+---------+
3 rows in set (0.001 sec)
*/
