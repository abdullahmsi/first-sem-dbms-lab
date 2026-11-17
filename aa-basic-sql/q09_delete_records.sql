-- ============================================================================
-- Question 9: Write a SQL query to delete specific records from a table using DELETE statement.
-- ============================================================================

-- Select the database
USE university;

/*
Reference Table (Before Delete):
+------------+--------------+----------------+--------------------------+---------+
| student_id | student_name | phone_number   | class_name               | dept_id |
+------------+--------------+----------------+--------------------------+---------+
|          1 | Aarav Sharma | +91 9000000099 | B.Sc. (Computer Science) |  100013 |
|          2 | Rohan Verma  | +91 9000000002 | B.Sc. (Data Science)     |  100013 |
+------------+--------------+----------------+--------------------------+---------+
*/

-- Step 1: Delete the specific record where student_id = 1
DELETE FROM students WHERE student_id = 1;

/*
Output:
Query OK, 1 row affected (0.006 sec)
*/

-- Step 2: Verify the remaining records in the table
SELECT * FROM students;

/*
Remaining Records (After Delete):
+------------+--------------+----------------+----------------------+---------+
| student_id | student_name | phone_number   | class_name           | dept_id |
+------------+--------------+----------------+----------------------+---------+
|          2 | Rohan Verma  | +91 9000000002 | B.Sc. (Data Science) |  100013 |
+------------+--------------+----------------+----------------------+---------+
1 row in set (0.001 sec)
*/
