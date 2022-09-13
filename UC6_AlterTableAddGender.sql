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
