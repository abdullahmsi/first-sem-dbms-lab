-- ============================================================================
-- Question 7: Write a SQL query to display unique records using DISTINCT clause.
-- ============================================================================

-- Select the database
USE university;

/*
Reference Table ('students'):
+------------+---------------+----------------+--------------------------+---------+
| student_id | student_name  | phone_number   | class_name               | dept_id |
+------------+---------------+----------------+--------------------------+---------+
|          1 | Aarav Sharma  | +91 9000000001 | B.Sc. (Computer Science) |  100013 |
|          2 | Rohan Verma   | +91 9000000002 | B.Sc. (Data Science)     |  100013 |
|          3 | Kabir Khan    | +91 9000000003 | B.Sc. (AI & ML)          |  100013 |
|          4 | Ananya Gupta  | +91 9000000004 | B.Sc. (Computer Science) |  100013 |
|          5 | Vikram Singh  | +91 9000000005 | B.Sc. (Computer Science) |  100013 |
|          6 | Meera Nair    | +91 9000000006 | B.Sc. (AI & ML)          |  100013 |
+------------+---------------+----------------+--------------------------+---------+
*/

-- Retrieve unique combinations of class_name and dept_id
SELECT DISTINCT class_name, dept_id FROM students;

/*
Output:
+--------------------------+---------+
| class_name               | dept_id |
+--------------------------+---------+
| B.Sc. (Computer Science) |  100013 |
| B.Sc. (Data Science)     |  100013 |
| B.Sc. (AI & ML)          |  100013 |
+--------------------------+---------+
3 rows in set (0.001 sec)
*/
