-- ============================================================================
-- Question 10: Write a SQL query to modify the structure of a table using ALTER command.
-- ============================================================================

-- Select the database
USE university;

/*
Reference Table Structure (Before Alter):
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| student_id   | int(11)      | NO   | PRI | NULL    | auto_increment |
| student_name | varchar(50)  | NO   |     | NULL    |                |
| phone_number | varchar(20)  | NO   |     | NULL    |                |
| class_name   | varchar(100) | NO   |     | NULL    |                |
| dept_id      | int(11)      | NO   |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
*/

-- Step 1: Add 'full_address', 'image_path', and 'status' columns to 'students'
ALTER TABLE students
    ADD full_address VARCHAR(255) NOT NULL,
    ADD image_path VARCHAR(255) NOT NULL,
    ADD status TINYINT NOT NULL DEFAULT 0;

/*
Output:
Query OK, 0 rows affected (0.039 sec)
Records: 0  Duplicates: 0  Warnings: 0
*/

-- Step 2: Verify the updated table structure
DESCRIBE students;

/*
Updated Table Structure (After Alter):
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| student_id   | int(11)      | NO   | PRI | NULL    | auto_increment |
| student_name | varchar(50)  | NO   |     | NULL    |                |
| phone_number | varchar(20)  | NO   |     | NULL    |                |
| class_name   | varchar(100) | NO   |     | NULL    |                |
| dept_id      | int(11)      | NO   |     | NULL    |                |
| full_address | varchar(255) | NO   |     | NULL    |                |
| image_path   | varchar(255) | NO   |     | NULL    |                |
| status       | tinyint(4)   | NO   |     | 0       |                |
+--------------+--------------+------+-----+---------+----------------+
8 rows in set (0.008 sec)
*/
