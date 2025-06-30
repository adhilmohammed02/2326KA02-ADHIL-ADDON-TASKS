mysql> CREATE TABLE Department (
    ->     DepartmentID INT PRIMARY KEY,
    ->     DepartmentName VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO DEPARTMENT VALUES(1,'AI');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO DEPARTMENT VALUES(2,'DS');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO DEPARTMENT VALUES(3,'ENGLISH');
Query OK, 1 row affected (0.01 sec)

mysql> CREATE TABLE Students (
    ->     StudentID INT PRIMARY KEY,
    ->     Name VARCHAR(100),
    ->     DepartmentID INT,
    ->     FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> insert into students values(1,'A','AI');
ERROR 1366 (HY000): Incorrect integer value: 'AI' for column 'DepartmentID' at row 1
mysql> insert into students values(1,'A',1);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students values(2,'B',2);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students values(3,'C',3);
Query OK, 1 row affected (0.01 sec)

mysql> CREATE TABLE Courses (
    ->     CourseID INT PRIMARY KEY,
    ->     CourseName VARCHAR(100),
    ->     DepartmentID INT,
    ->     FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> insert into courses values(1,'AI',1);
Query OK, 1 row affected (0.01 sec)

mysql> insert into courses values(2,'DS',2);
Query OK, 1 row affected (0.02 sec)

mysql> insert into courses values(3,'ENGLISH',3);
Query OK, 1 row affected (0.01 sec)

mysql> CREATE TABLE Marks (
    ->     MarkID INT PRIMARY KEY,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     Marks INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
    -> );
Query OK, 0 rows affected (0.20 sec)

mysql> INSERT INTO MARKS VALUES(1,1,1,100);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO MARKS VALUES(2,2,2,90);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO MARKS VALUES(3,3,3,80);
Query OK, 1 row affected (0.01 sec)

mysql> CREATE TABLE Results (
    ->     ResultID INT AUTO_INCREMENT PRIMARY KEY,
    ->     StudentID INT,
    ->     Subject VARCHAR(100),
    ->     Marks INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> INSERT INTO Results (StudentID, Subject, Marks) VALUES
    -> (1, 'Math', 85),
    -> (1, 'Physics', 78),
    -> (2, 'Math', 90),
    -> (2, 'Physics', 88);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT
    ->     d.DepartmentName,
    ->     s.StudentID,
    ->     s.Name AS StudentName,
    ->     r.Subject,
    ->     r.Marks
    -> FROM
    ->     Students s
    -> JOIN
    ->     Department d ON s.DepartmentID = d.DepartmentID
    -> JOIN
    ->     Results r ON s.StudentID = r.StudentID
    -> ORDER BY
    ->     d.DepartmentName, s.StudentID, r.Subject;
+----------------+-----------+-------------+---------+-------+
| DepartmentName | StudentID | StudentName | Subject | Marks |
+----------------+-----------+-------------+---------+-------+
| AI             |         1 | A           | Math    |    85 |
| AI             |         1 | A           | Physics |    78 |
| DS             |         2 | B           | Math    |    90 |
| DS             |         2 | B           | Physics |    88 |
+----------------+-----------+-------------+---------+-------+
4 rows in set (0.01 sec)