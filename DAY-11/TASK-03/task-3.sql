mysql> CREATE TABLE Product (
    ->     ProductID INT PRIMARY KEY,
    ->     ProductName VARCHAR(100),
    ->     Price DECIMAL(10, 2)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO PRODUCT VALUES(1,'SOAP',300);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO PRODUCT VALUES(2,'DISPENSER',900);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO PRODUCT VALUES(3,'DISHWASHER',29000);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM PRODUCT;
+-----------+-------------+----------+
| ProductID | ProductName | Price    |
+-----------+-------------+----------+
|         1 | SOAP        |   300.00 |
|         2 | DISPENSER   |   900.00 |
|         3 | DISHWASHER  | 29000.00 |
+-----------+-------------+----------+
3 rows in set (0.00 sec)

mysql> SELECT MAX(Price) AS MaxPrice
    -> FROM Product;
+----------+
| MaxPrice |
+----------+
| 29000.00 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT MIN(Price) AS MinPrice
    -> FROM Product;
+----------+
| MinPrice |
+----------+
|   300.00 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT
    ->     MAX(Price) AS MaxPrice,
    ->     MIN(Price) AS MinPrice
    -> FROM Product;
+----------+----------+
| MaxPrice | MinPrice |
+----------+----------+
| 29000.00 |   300.00 |
+----------+----------+
1 row in set (0.00 sec)

mysql> SELECT * FROM Product
    -> WHERE Price = (SELECT MAX(Price) FROM Product);
+-----------+-------------+----------+
| ProductID | ProductName | Price    |
+-----------+-------------+----------+
|         3 | DISHWASHER  | 29000.00 |
+-----------+-------------+----------+
1 row in set (0.00 sec)

mysql> SELECT * FROM Product
    -> WHERE Price = (SELECT MIN(Price) FROM Product);
+-----------+-------------+--------+
| ProductID | ProductName | Price  |
+-----------+-------------+--------+
|         1 | SOAP        | 300.00 |
+-----------+-------------+--------+
1 row in set (0.00 sec)