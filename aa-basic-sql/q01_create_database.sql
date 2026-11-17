-- ============================================================================
-- Question 1: Write a SQL command to create a database and display all available databases in the system.
-- ============================================================================

-- Step 1: Display all available databases in the system
SHOW DATABASES;

/*
Output:
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sys                |
| test               |
+--------------------+
*/

-- Step 2: Create a new database
CREATE DATABASE university;

/*
Output:
Query OK, 1 row affected (0.002 sec)
*/

-- Step 3: Verify the newly created database
SHOW DATABASES;

/*
Output:
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sys                |
| test               |
| university         |  <-- Database created here
+--------------------+
*/
