-- ============================================================================
-- Question 3: Write a SQL query to insert multiple records into a table using INSERT statement.
-- ============================================================================

-- Select the database
USE university;

-- Step 1: Insert multiple records into the 'students' table
INSERT INTO students (student_name, phone_number, class_name, dept_id) VALUES
    ('Aarav Sharma', '+91 9000000001', 'B.Sc. (Computer Science)', 100013),
    ('Rohan Verma', '+91 9000000002', 'B.Sc. (Data Science)', 100013),
    ('Kabir Khan', '+91 9000000003', 'B.Sc. (AI & ML)', 100013);

/*
Output:
Query OK, 3 rows affected (0.010 sec)
Records: 3  Duplicates: 0  Warnings: 0
*/

-- Step 2: Verify the inserted records
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
