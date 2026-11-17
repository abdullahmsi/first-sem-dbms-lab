-- ============================================================================
-- Question 6: Write a SQL query to sort records in ascending and descending order using ORDER BY clause.
-- ============================================================================

-- Select the database
USE university;

-- 1st Query: Sort records in ascending order by student_name
SELECT * FROM students ORDER BY student_name ASC;

/*
1st Query Output:
+------------+--------------+----------------+--------------------------+---------+
| student_id | student_name | phone_number   | class_name               | dept_id |
+------------+--------------+----------------+--------------------------+---------+
|          1 | Aarav Sharma | +91 9000000001 | B.Sc. (Computer Science) |  100013 |
|          3 | Kabir Khan   | +91 9000000003 | B.Sc. (AI & ML)          |  100013 |
|          2 | Rohan Verma  | +91 9000000002 | B.Sc. (Data Science)     |  100013 |
+------------+--------------+----------------+--------------------------+---------+
3 rows in set (0.001 sec)
*/

-- 2nd Query: Sort records in descending order by student_name
SELECT * FROM students ORDER BY student_name DESC;

/*
2nd Query Output:
+------------+--------------+----------------+--------------------------+---------+
| student_id | student_name | phone_number   | class_name               | dept_id |
+------------+--------------+----------------+--------------------------+---------+
|          2 | Rohan Verma  | +91 9000000002 | B.Sc. (Data Science)     |  100013 |
|          3 | Kabir Khan   | +91 9000000003 | B.Sc. (AI & ML)          |  100013 |
|          1 | Aarav Sharma | +91 9000000001 | B.Sc. (Computer Science) |  100013 |
+------------+--------------+----------------+--------------------------+---------+
3 rows in set (0.001 sec)
*/
