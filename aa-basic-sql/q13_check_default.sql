-- ============================================================================
-- Question 13: Write a SQL query to use CHECK and DEFAULT constraints in table creation.
-- ============================================================================

-- Select the database
USE university;

-- Step 1: Create the 'employees' table with CHECK and DEFAULT constraints
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    gender VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    status TINYINT NOT NULL DEFAULT 1,
    CONSTRAINT check_age CHECK (age >= 18)
);

/*
Output:
Query OK, 0 rows affected (0.019 sec)
*/

-- Step 2: Verify the table structure
DESCRIBE employees;

/*
Output:
+--------+-------------+------+-----+---------+----------------+
| Field  | Type        | Null | Key | Default | Extra          |
+--------+-------------+------+-----+---------+----------------+
| emp_id | int(11)     | NO   | PRI | NULL    | auto_increment |
| gender | varchar(20) | NO   |     | NULL    |                |
| age    | int(11)     | NO   |     | NULL    |                |
| status | tinyint(4)  | NO   |     | 1       |                |
+--------+-------------+------+-----+---------+----------------+
4 rows in set (0.008 sec)
*/
