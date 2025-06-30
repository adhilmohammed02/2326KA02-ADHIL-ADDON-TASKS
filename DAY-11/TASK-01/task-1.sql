mysql> CREATE TABLE Student (
    ->     StudentID INT PRIMARY KEY,
    ->     Name VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> CREATE TABLE Course (
    ->     CourseID INT PRIMARY KEY,
    ->     CourseName VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> CREATE TABLE Enrollment (
    ->     StudentID INT,
    ->     CourseID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> insert into student values(1,'ABCDE');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(2,'FGHIJ');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(3,'KLMNO');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO COURSE VALUES(1,'ENGLISH');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO COURSE VALUES(2,'TAMIL');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO COURSE VALUES(3,'SCIENCE');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ENROLLMENT VALUES(1,1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ENROLLMENT VALUES(2,2);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ENROLLMENT VALUES(3,3);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT c.CourseID, c.CourseName, COUNT(e.StudentID) AS StudentCount
    -> FROM Course c
    -> LEFT JOIN Enrollment e ON c.CourseID = e.CourseID
    -> GROUP BY c.CourseID, c.CourseName
    -> ORDER BY StudentCount DESC;
+----------+------------+--------------+
| CourseID | CourseName | StudentCount |
+----------+------------+--------------+
|        1 | ENGLISH    |            1 |
|        2 | TAMIL      |            1 |
|        3 | SCIENCE    |            1 |
+----------+------------+--------------+
3 rows in set (0.00 sec)