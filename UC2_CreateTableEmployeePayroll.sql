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
