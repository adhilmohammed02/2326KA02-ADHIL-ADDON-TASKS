mysql>CREATE TABLE Book (
    BookID INT,
    Title VARCHAR(150),
    Author VARCHAR(100),
    Category VARCHAR(50)
);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into book values(1,'history','abcde','country');
Query OK, 1 row affected (0.01 sec)

mysql> insert into book values(2,'geography','fghij','country');
Query OK, 1 row affected (0.01 sec)

mysql> insert into book values(3,'civics','klmno','country');
Query OK, 1 row affected (0.01 sec)

mysql> select * from book;
+--------+-----------+--------+----------+
| BookID | Title     | Author | Category |
+--------+-----------+--------+----------+
|      1 | history   | abcde  | country  |
|      2 | geography | fghij  | country  |
|      3 | civics    | klmno  | country  |
+--------+-----------+--------+----------+
3 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM Book
    -> WHERE Title LIKE '%history%'
    ->    OR Author LIKE '%history%'
    ->    OR Category LIKE '%history%';
+--------+---------+--------+----------+
| BookID | Title   | Author | Category |
+--------+---------+--------+----------+
|      1 | history | abcde  | country  |
+--------+---------+--------+----------+
1 row in set (0.00 sec)