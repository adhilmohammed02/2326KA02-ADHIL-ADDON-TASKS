CREATE TABLE Employee (EmpID INT PRIMARY KEY, EmpName VARCHAR(100) NOT NULL, Salary DECIMAL(10, 2), DeptID INT,HireDate DATE);
Query OK, 0 rows affected (0.04 sec)

INSERT INTO Employee (EmpID, EmpName, Salary, DeptID, HireDate) VALUES
(101, 'Johnson', 60000, 1, '2020-06-15'),
(102, 'Smith', 75000, 2, '2018-11-20'),
(103, 'White', 55000, 3, '2019-03-05'),
(104, 'Brown', 80000, 1, '2021-07-30'),
(105, 'Green', 50000, 4, '2022-01-10');
Query OK, 5 rows affected (0.04 sec)

SELECT * FROM Employee;
+-------+---------+----------+--------+------------+
| EmpID | EmpName | Salary   | DeptID | HireDate   |
+-------+---------+----------+--------+------------+
|   101 | Johnson | 60000.00 |      1 | 2020-06-15 |
|   102 | Smith   | 75000.00 |      2 | 2018-11-20 |
|   103 | White   | 55000.00 |      3 | 2019-03-05 |
|   104 | Brown   | 80000.00 |      1 | 2021-07-30 |
|   105 | Green   | 50000.00 |      4 | 2022-01-10 |
+-------+---------+----------+--------+------------+
Query OK, 5 rows affected (0.04 sec)


CREATE TABLE Department (DeptID INT PRIMARY KEY, DeptName VARCHAR(100) NOT NULL);
Query OK, 0 rows affected (0.04 sec)

INSERT INTO Department (DeptID, DeptName) VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'Engineering'),
(4, 'Marketing');
Query OK, 4 rows affected (0.04 sec)

SELECT * FROM Department;
+--------+-----------------+
| DeptID | DeptName        |
+--------+-----------------+
|      1 | Human Resources |
|      2 | Finance         |
|      3 | Engineering     |
|      4 | Marketing       |
+--------+-----------------+
Query OK, 4 rows affected (0.04 sec)