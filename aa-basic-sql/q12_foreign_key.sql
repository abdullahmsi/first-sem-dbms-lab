-- ============================================================================
-- Question 12: Write a SQL query to create a table with FOREIGN KEY constraint to establish relationship between tables.
-- ============================================================================

-- Select the database
USE university;

/*
Parent Table ('users'):
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| user_id       | int(10)      | NO   | PRI | NULL    | auto_increment |
| email_address | varchar(128) | NO   | UNI | NULL    |                |
| password      | varchar(255) | NO   |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
*/

-- Step 1: Create the child table 'orders' referencing 'users(user_id)'
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    item_name VARCHAR(128) NOT NULL,
    CONSTRAINT fk_user FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

/*
Output:
Query OK, 0 rows affected (0.025 sec)
*/

-- Step 2: Verify the child table structure
DESCRIBE orders;

/*
Output:
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| order_id  | int(11)      | NO   | PRI | NULL    | auto_increment |
| user_id   | int(10)      | NO   | MUL | NULL    |                |
| item_name | varchar(128) | NO   |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+
3 rows in set (0.010 sec)
*/
