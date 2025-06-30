mysql>CREATE TABLE Courses (
    CourseID INT,
    CourseName VARCHAR(100),
    Fees DECIMAL(10, 2)
);
Query OK, 0 rows affected (0.05 sec)  

mysql> SELECT * FROM COURSES;
+----------+------------+----------+
| CourseID | CourseName | Fees     |
+----------+------------+----------+
|        1 | A          | 20000.00 |
|        2 | B          | 30000.00 |
|        3 | C          | 40000.00 |
+----------+------------+----------+
3 rows in set (0.00 sec)

mysql> SELECT CourseID, CourseName, Fees
    -> FROM Courses
    -> ORDER BY Fees ASC;
+----------+------------+----------+
| CourseID | CourseName | Fees     |
+----------+------------+----------+
|        1 | A          | 20000.00 |
|        2 | B          | 30000.00 |
|        3 | C          | 40000.00 |
+----------+------------+----------+
3 rows in set (0.00 sec)