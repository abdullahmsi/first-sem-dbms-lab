-- ============================================================================
-- Question 11: Write a SQL query to apply NOT NULL, UNIQUE and PRIMARY KEY constraints on a table.
-- ============================================================================

-- Select the database
USE university;

-- Step 1: Create the 'users' table with PRIMARY KEY, UNIQUE, and NOT NULL constraints
CREATE TABLE users (
    user_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    email_address VARCHAR(128) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

/*
Output:
Query OK, 0 rows affected (0.027 sec)
*/

-- Step 2: Verify the table structure and constraints
DESCRIBE users;

/*
Output:
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| user_id       | int(10)      | NO   | PRI | NULL    | auto_increment |
| email_address | varchar(128) | NO   | UNI | NULL    |                |
| password      | varchar(255) | NO   |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
3 rows in set (0.009 sec)
*/
