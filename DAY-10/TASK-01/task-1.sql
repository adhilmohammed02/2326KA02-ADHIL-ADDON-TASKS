
mysql>CREATE TABLE StudentMarks (
    StudentID INT,
    Name VARCHAR(100),
    Subject VARCHAR(50),
    Marks INT
);
Query OK, 0 rows affected (0.15 sec)

mysql> insert into StudentMarks values(1,'a','ai',100);
Query OK, 1 row affected (0.01 sec)

mysql> insert into StudentMarks values(2,'b','ds',90);
Query OK, 1 row affected (0.01 sec)

mysql> insert into StudentMarks values(3,'c','nsm',90);
Query OK, 1 row affected (0.01 sec)

mysql> select * from StudentMarks;
+-----------+------+---------+-------+
| StudentID | Name | Subject | Marks |
+-----------+------+---------+-------+
|         1 | a    | ai      |   100 |
|         2 | b    | ds      |    90 |
|         3 | c    | nsm     |    90 |
+-----------+------+---------+-------+
3 rows in set (0.00 sec)

mysql> SELECT StudentID, Name, Subject, Marks
    -> FROM StudentMarks
    -> WHERE Marks > 80;
+-----------+------+---------+-------+
| StudentID | Name | Subject | Marks |
+-----------+------+---------+-------+
|         1 | a    | ai      |   100 |
|         2 | b    | ds      |    90 |
|         3 | c    | nsm     |    90 |
+-----------+------+---------+-------+
3 rows in set (0.00 sec)