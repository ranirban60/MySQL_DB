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
