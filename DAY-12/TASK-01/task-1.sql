mysql> CREATE TABLE Students (
    ->     StudentID INT PRIMARY KEY,
    ->     Name VARCHAR(100),
    ->     Class VARCHAR(20)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO STUDENTS VALUES(1,'A','1A');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO STUDENTS VALUES(2,'B','2B');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO STUDENTS VALUES(3,'C','3C');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM STUDENTS;
+-----------+------+-------+
| StudentID | Name | Class |
+-----------+------+-------+
|         1 | A    | 1A    |
|         2 | B    | 2B    |
|         3 | C    | 3C    |
+-----------+------+-------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE Marks (
    ->     MarkID INT PRIMARY KEY,
    ->     StudentID INT,
    ->     Subject VARCHAR(50),
    ->     Marks INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO MARKS VALUES(1,1,'ENGLISH',100);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO MARKS VALUES(2,2,'MATHS',98);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO MARKS VALUES(3,3,'SCIENCE',95);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM MARKS;
+--------+-----------+---------+-------+
| MarkID | StudentID | Subject | Marks |
+--------+-----------+---------+-------+
|      1 |         1 | ENGLISH |   100 |
|      2 |         2 | MATHS   |    98 |
|      3 |         3 | SCIENCE |    95 |
+--------+-----------+---------+-------+
3 rows in set (0.00 sec)

mysql> SELECT
    ->     Students.StudentID,
    ->     Students.Name,
    ->     Students.Class,
    ->     Marks.Subject,
    ->     Marks.Marks
    -> FROM Students
    -> JOIN Marks ON Students.StudentID = Marks.StudentID;
+-----------+------+-------+---------+-------+
| StudentID | Name | Class | Subject | Marks |
+-----------+------+-------+---------+-------+
|         1 | A    | 1A    | ENGLISH |   100 |
|         2 | B    | 2B    | MATHS   |    98 |
|         3 | C    | 3C    | SCIENCE |    95 |
+-----------+------+-------+---------+-------+
3 rows in set (0.01 sec)

mysql> SELECT
    ->     Students.StudentID,
    ->     Students.Name,
    ->     Students.Class,
    ->     Marks.Subject,
    ->     Marks.Marks
    -> FROM Students
    -> LEFT JOIN Marks ON Students.StudentID = Marks.StudentID;
+-----------+------+-------+---------+-------+
| StudentID | Name | Class | Subject | Marks |
+-----------+------+-------+---------+-------+
|         1 | A    | 1A    | ENGLISH |   100 |
|         2 | B    | 2B    | MATHS   |    98 |
|         3 | C    | 3C    | SCIENCE |    95 |
+-----------+------+-------+---------+-------+
3 rows in set (0.00 sec)