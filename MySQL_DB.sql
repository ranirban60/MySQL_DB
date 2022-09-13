mysql> CREATE DATABASE payroll_service;
Query OK, 1 row affected (0.01 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| payroll_service    |
| performance_schema |
| sakila             |
| sys                |
| test_db_1          |
| world              |
+--------------------+
8 rows in set (0.00 sec)

mysql> USE payroll_service;
Database changed

mysql> CREATE TABLE employee_payroll (id int NOT NULL AUTO_INCREMENT, name varchar(100) NOT NULL, salary double NOT NULL, start_date DATE NOT NULL, PRIMARY KEY (id));
Query OK, 0 rows affected (0.03 sec)
mysql> DESC employee_payroll;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int          | NO   | PRI | NULL    | auto_increment |
| name       | varchar(100) | NO   |     | NULL    |                |
| salary     | double       | NO   |     | NULL    |                |
| start_date | date         | NO   |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO employee_payroll (name, salary, start_date) VALUES ('Devid',30000,'2022-07-05'),('Prince',35000,'2021-08-30'),('Diana',37000,'2020-10-05'),('Warner',33000,'2019-09-29'),('Jack',50000,'2018-01-05');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee_payroll;
+----+--------+--------+------------+
| id | name   | salary | start_date |
+----+--------+--------+------------+
|  1 | Devid  |  30000 | 2022-07-05 |
|  2 | Prince |  35000 | 2021-08-30 |
|  3 | Diana  |  37000 | 2020-10-05 |
|  4 | Warner |  33000 | 2019-09-29 |
|  5 | Jack   |  50000 | 2018-01-05 |
+----+--------+--------+------------+
5 rows in set (0.00 sec)

mysql> SELECT salary FROM employee_payroll WHERE name = 'Devid';
+--------+
| salary |
+--------+
|  30000 |
+--------+
1 row in set (0.00 sec)
mysql> SELECT name FROM employee_payroll WHERE start_date BETWEEN '2020-01-01' AND DATE (NOW());
+--------+
| name   |
+--------+
| Devid  |
| Prince |
| Diana  |
+--------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE employee_payroll ADD gender varchar(1) NOT NULL AFTER name;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0
mysql> SELECT * FROM employee_payroll;
+----+--------+--------+--------+------------+
| id | name   | gender | salary | start_date |
+----+--------+--------+--------+------------+
|  1 | Devid  |        |  30000 | 2022-07-05 |
|  2 | Prince |        |  35000 | 2021-08-30 |
|  3 | Diana  |        |  37000 | 2020-10-05 |
|  4 | Warner |        |  33000 | 2019-09-29 |
|  5 | Jack   |        |  50000 | 2018-01-05 |
+----+--------+--------+--------+------------+
5 rows in set (0.00 sec)

mysql> UPDATE employee_payroll SET gender = 'M' WHERE name != 'Diana';
Query OK, 4 rows affected (0.01 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> SELECT * FROM employee_payroll;
+----+--------+--------+--------+------------+
| id | name   | gender | salary | start_date |
+----+--------+--------+--------+------------+
|  1 | Devid  | M      |  30000 | 2022-07-05 |
|  2 | Prince | M      |  35000 | 2021-08-30 |
|  3 | Diana  |        |  37000 | 2020-10-05 |
|  4 | Warner | M      |  33000 | 2019-09-29 |
|  5 | Jack   | M      |  50000 | 2018-01-05 |
+----+--------+--------+--------+------------+
5 rows in set (0.00 sec)

mysql> UPDATE employee_payroll SET gender ='F' WHERE name = 'Diana';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM employee_payroll;
+----+--------+--------+--------+------------+
| id | name   | gender | salary | start_date |
+----+--------+--------+--------+------------+
|  1 | Devid  | M      |  30000 | 2022-07-05 |
|  2 | Prince | M      |  35000 | 2021-08-30 |
|  3 | Diana  | F      |  37000 | 2020-10-05 |
|  4 | Warner | M      |  33000 | 2019-09-29 |
|  5 | Jack   | M      |  50000 | 2018-01-05 |
+----+--------+--------+--------+------------+
5 rows in set (0.00 sec)

mysql> SELECT SUM(salary) AS male_employees_salary_sum FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
+---------------------------+
| male_employees_salary_sum |
+---------------------------+
|                    148000 |
+---------------------------+
1 row in set (0.01 sec)

mysql> SELECT SUM(salary) AS female_employees_salary_sum FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
+-----------------------------+
| female_employees_salary_sum |
+-----------------------------+
|                       37000 |
+-----------------------------+
1 row in set (0.00 sec)

mysql> SELECT AVG(salary) AS male_employees_avg_salary FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
+---------------------------+
| male_employees_avg_salary |
+---------------------------+
|                     37000 |
+---------------------------+
1 row in set (0.00 sec)

mysql> SELECT AVG(salary) AS female_employees_avg_salary FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
+-----------------------------+
| female_employees_avg_salary |
+-----------------------------+
|                       37000 |
+-----------------------------+
1 row in set (0.00 sec)

mysql> SELECT MIN(salary) AS male_employees_min_salary FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
+---------------------------+
| male_employees_min_salary |
+---------------------------+
|                     30000 |
+---------------------------+
1 row in set (0.01 sec)

mysql> SELECT MIN(salary) AS female_employees_min_salary FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
+-----------------------------+
| female_employees_min_salary |
+-----------------------------+
|                       37000 |
+-----------------------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(salary) AS male_employees_max_salary FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
+---------------------------+
| male_employees_max_salary |
+---------------------------+
|                     50000 |
+---------------------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(salary) AS female_employees_max_salary FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
+-----------------------------+
| female_employees_max_salary |
+-----------------------------+
|                       37000 |
+-----------------------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(salary) AS male_employees_count FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
+----------------------+
| male_employees_count |
+----------------------+
|                    4 |
+----------------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(salary) AS female_employees_count FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
+------------------------+
| female_employees_count |
+------------------------+
|                      1 |
+------------------------+
1 row in set (0.00 sec)
