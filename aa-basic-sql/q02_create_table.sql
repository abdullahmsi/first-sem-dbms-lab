-- ============================================================================
-- Question 2: Write a SQL query to create a table with appropriate data types and constraints such as primary key.
-- ============================================================================

-- Select the database
USE university;

-- Step 1: Create the 'students' table with PRIMARY KEY and NOT NULL constraints
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    class_name VARCHAR(100) NOT NULL,
    dept_id INT NOT NULL
);

/*
Output:
Query OK, 0 rows affected (0.038 sec)
*/

-- Step 2: Verify the table structure
DESCRIBE students;

/*
Output:
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| student_id   | int(11)      | NO   | PRI | NULL    | auto_increment |
| student_name | varchar(50)  | NO   |     | NULL    |                |
| phone_number | varchar(20)  | NO   |     | NULL    |                |
| class_name   | varchar(100) | NO   |     | NULL    |                |
| dept_id      | int(11)      | NO   |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
5 rows in set (0.008 sec)
*/
