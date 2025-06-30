mysql> CREATE TABLE Employee (
    ->     EmployeeID INT PRIMARY KEY,
    ->     Name VARCHAR(100),
    ->     Department VARCHAR(50),
    ->     Salary DECIMAL(10, 2)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO EMPLOYEE VALUES(1,'A','AI',50000);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO EMPLOYEE VALUES(2,'B','DS',40000);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO EMPLOYEE VALUES(3,'C','ENGLISH',30000);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM EMPLOYEE;
+------------+------+------------+----------+
| EmployeeID | Name | Department | Salary   |
+------------+------+------------+----------+
|          1 | A    | AI         | 50000.00 |
|          2 | B    | DS         | 40000.00 |
|          3 | C    | ENGLISH    | 30000.00 |
+------------+------+------------+----------+
3 rows in set (0.00 sec)

mysql> SELECT Department, AVG(Salary) AS AverageSalary
    -> FROM Employee
    -> GROUP BY Department
    -> ORDER BY AverageSalary DESC;
+------------+---------------+
| Department | AverageSalary |
+------------+---------------+
| AI         |  50000.000000 |
| DS         |  40000.000000 |
| ENGLISH    |  30000.000000 |
+------------+---------------+
3 rows in set (0.00 sec)