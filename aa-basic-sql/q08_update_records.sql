-- ============================================================================
-- Question 8: Write a SQL query to update existing records in a table using UPDATE statement.
-- ============================================================================

-- Select the database
USE university;

/*
Old Record (Before Update):
+------------+--------------+----------------+--------------------------+---------+
| student_id | student_name | phone_number   | class_name               | dept_id |
+------------+--------------+----------------+--------------------------+---------+
|          1 | Aarav Sharma | +91 9000000001 | B.Sc. (Computer Science) |  100013 |
+------------+--------------+----------------+--------------------------+---------+
*/

-- Step 1: Update the phone_number for student_id = 1
UPDATE students 
SET phone_number = '+91 9000000099' 
WHERE student_id = 1;

/*
Output:
Query OK, 1 row affected (0.006 sec)
Rows matched: 1  Changed: 1  Warnings: 0
*/

-- Step 2: Verify the updated record
SELECT * FROM students WHERE student_id = 1;

/*
Updated Record (After Update):
+------------+--------------+----------------+--------------------------+---------+
| student_id | student_name | phone_number   | class_name               | dept_id |
+------------+--------------+----------------+--------------------------+---------+
|          1 | Aarav Sharma | +91 9000000099 | B.Sc. (Computer Science) |  100013 |
+------------+--------------+----------------+--------------------------+---------+
1 row in set (0.001 sec)
*/
