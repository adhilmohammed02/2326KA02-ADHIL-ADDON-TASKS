
mysql> CREATE TABLE Employees (
    ->     EmployeeID INT PRIMARY KEY,
    ->     Name VARCHAR(100),
    ->     Department VARCHAR(50),
    ->     Salary DECIMAL(10,2),
    ->     HireDate DATE,
    ->     Status VARCHAR(20) -- e.g., 'Active', 'Inactive'
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> insert into employees values(1,'john','hr',50000,'2023-01-01','active');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employees values(2,'johan','manager',60000,'2024-01-01','inactive');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employees values(3,'adhil','administrator',60000,'2025-01-01','active');
Query OK, 1 row affected (0.01 sec)

mysql> select * from employees where name like "%john%";
+------------+------+------------+----------+------------+--------+
| EmployeeID | Name | Department | Salary   | HireDate   | Status |
+------------+------+------------+----------+------------+--------+
|          1 | john | hr         | 50000.00 | 2023-01-01 | active |
+------------+------+------------+----------+------------+--------+
1 row in set (0.00 sec)

mysql> SELECT * FROM Employees
    -> WHERE Department = 'HR';
+------------+------+------------+----------+------------+--------+
| EmployeeID | Name | Department | Salary   | HireDate   | Status |
+------------+------+------------+----------+------------+--------+
|          1 | john | hr         | 50000.00 | 2023-01-01 | active |
+------------+------+------------+----------+------------+--------+
1 row in set (0.00 sec)

mysql> SELECT * FROM Employees
    -> WHERE Status = 'Active';
+------------+------+---------------+----------+------------+--------+
| EmployeeID | Name | Department    | Salary   | HireDate   | Status |
+------------+------+---------------+----------+------------+--------+
|          1 | john | hr            | 50000.00 | 2023-01-01 | active |
|          3 | adhil| administrator | 60000.00 | 2025-01-01 | active |
+------------+------+---------------+----------+------------+--------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM Employees
    -> WHERE HireDate BETWEEN '2023-01-01' AND '2024-12-31';
+------------+-------+------------+----------+------------+----------+
| EmployeeID | Name  | Department | Salary   | HireDate   | Status   |
+------------+-------+------------+----------+------------+----------+
|          1 | john  | hr         | 50000.00 | 2023-01-01 | active   |
|          2 | johan | manager    | 60000.00 | 2024-01-01 | inactive |
+------------+-------+------------+----------+------------+----------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM Employees
    -> WHERE Salary > 50000;
+------------+-------+---------------+----------+------------+----------+
| EmployeeID | Name  | Department    | Salary   | HireDate   | Status   |
+------------+-------+---------------+----------+------------+----------+
|          2 | johan | manager       | 60000.00 | 2024-01-01 | inactive |
|          3 | adhil | administrator | 60000.00 | 2025-01-01 | active   |
+------------+-------+---------------+----------+------------+----------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM Employees
    -> ORDER BY Name ASC;
+------------+-------+---------------+----------+------------+----------+
| EmployeeID | Name  | Department    | Salary   | HireDate   | Status   |
+------------+-------+---------------+----------+------------+----------+
|          2 | johan | manager       | 60000.00 | 2024-01-01 | inactive |
|          1 | john  | hr            | 50000.00 | 2023-01-01 | active   |
|          3 | adhil | administrator | 60000.00 | 2025-01-01 | active   |
+------------+-------+---------------+----------+------------+----------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM Employees
    -> ORDER BY Name DESC;
+------------+-------+---------------+----------+------------+----------+
| EmployeeID | Name  | Department    | Salary   | HireDate   | Status   |
+------------+-------+---------------+----------+------------+----------+
|          3 | adhil | administrator | 60000.00 | 2025-01-01 | active   |
|          1 | john  | hr            | 50000.00 | 2023-01-01 | active   |
|          2 | johan | manager       | 60000.00 | 2024-01-01 | inactive |
+------------+-------+---------------+----------+------------+----------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM Employees
    -> ORDER BY HireDate DESC;
+------------+-------+---------------+----------+------------+----------+
| EmployeeID | Name  | Department    | Salary   | HireDate   | Status   |
+------------+-------+---------------+----------+------------+----------+
|          3 | adhil | administrator | 60000.00 | 2025-01-01 | active   |
|          2 | johan | manager       | 60000.00 | 2024-01-01 | inactive |
|          1 | john  | hr            | 50000.00 | 2023-01-01 | active   |
+------------+-------+---------------+----------+------------+----------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM Employees
    -> WHERE Department = 'IT' AND Status = 'Active'
    -> ORDER BY Salary DESC;
Empty set (0.00 sec)