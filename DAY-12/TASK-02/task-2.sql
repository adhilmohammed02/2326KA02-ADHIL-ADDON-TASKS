mysql>CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100)
);
Query OK, 0 rows affected (0.06 sec)

mysql>CREATE TABLE Marks (
    MarkID INT PRIMARY KEY,
    StudentID INT,
    Subject VARCHAR(50),
    Marks INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
Query OK, 0 rows affected (0.06 sec)

mysql> SELECT StudentID, Name
    -> FROM Students
    -> WHERE StudentID = (
    ->     SELECT StudentID
    ->     FROM Marks
    ->     GROUP BY StudentID
    ->     ORDER BY SUM(Marks) DESC
    ->     LIMIT 1
    -> );
+-----------+------+
| StudentID | Name |
+-----------+------+
|         1 | A    |
+-----------+------+
1 row in set (0.00 sec)