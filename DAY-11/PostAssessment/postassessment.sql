mysql> CREATE TABLE Employee (
    ->     EmployeeID INT PRIMARY KEY,
    ->     Name VARCHAR(100),
    ->     Department VARCHAR(50),
    ->     JobTitle VARCHAR(100),
    ->     Salary DECIMAL(10, 2),
    ->     HireDate DATE,
    ->     Status VARCHAR(20) -- e.g., 'Active', 'Resigned'
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO EMPLOYEE VALUES(1,'A','AI','AI',50000,'2000-01-01','ACTIVE');
Query OK, 1 row affected (0.06 sec)

mysql> INSERT INTO EMPLOYEE VALUES(2,'B','DS','DS',40000,'2000-02-01','INACTIVE');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO EMPLOYEE VALUES(3,'C','ENGLISH','ENGLISH',30000,'2001-02-01','ACTIVE');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT Department, COUNT(*) AS TotalEmployees
    -> FROM Employee
    -> GROUP BY Department;
+------------+----------------+
| Department | TotalEmployees |
+------------+----------------+
| AI         |              1 |
| DS         |              1 |
| ENGLISH    |              1 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> SELECT Department, AVG(Salary) AS AverageSalary
    -> FROM Employee
    -> GROUP BY Department;
+------------+---------------+
| Department | AverageSalary |
+------------+---------------+
| AI         |  50000.000000 |
| DS         |  40000.000000 |
| ENGLISH    |  30000.000000 |
+------------+---------------+
3 rows in set (0.00 sec)

mysql> SELECT
    ->     Department,
    ->     MAX(Salary) AS HighestSalary,
    ->     MIN(Salary) AS LowestSalary
    -> FROM Employee
    -> GROUP BY Department;
+------------+---------------+--------------+
| Department | HighestSalary | LowestSalary |
+------------+---------------+--------------+
| AI         |      50000.00 |     50000.00 |
| DS         |      40000.00 |     40000.00 |
| ENGLISH    |      30000.00 |     30000.00 |
+------------+---------------+--------------+
3 rows in set (0.00 sec)

mysql> SELECT
    ->     Department,
    ->     Status,
    ->     COUNT(*) AS EmployeeCount
    -> FROM Employee
    -> GROUP BY Department, Status
    -> ORDER BY Department, Status;
+------------+----------+---------------+
| Department | Status   | EmployeeCount |
+------------+----------+---------------+
| AI         | ACTIVE   |             1 |
| DS         | INACTIVE |             1 |
| ENGLISH    | ACTIVE   |             1 |
+------------+----------+---------------+
3 rows in set (0.00 sec)

mysql> SELECT
    ->     Department,
    ->     COUNT(*) AS NewHires2025
    -> FROM Employee
    -> WHERE YEAR(HireDate) = 2025
    -> GROUP BY Department;
Empty set (0.00 sec)