mysql> CREATE TABLE Customers (
    ->     CustomerID INT PRIMARY KEY,
    ->     Name VARCHAR(100),
    ->     Email VARCHAR(100),
    ->     City VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> insert into customers values(1,'A','a@gmail.com','coimbatore');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customers values(2,'B','b@gmail.com','bangalore');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customers values(3,'C','c@gmail.com','andhra');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customers;
+------------+------+-------------+------------+
| CustomerID | Name | Email       | City       |
+------------+------+-------------+------------+
|          1 | A    | a@gmail.com | coimbatore |
|          2 | B    | b@gmail.com | bangalore  |
|          3 | C    | c@gmail.com | andhra     |
+------------+------+-------------+------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE Orders (
    ->     OrderID INT PRIMARY KEY,
    ->     CustomerID INT,
    ->     OrderDate DATE,
    ->     TotalAmount DECIMAL(10, 2),
    ->     FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> insert into orders values(1,1,'2020-01-01',12000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into orders values(2,2,'2021-02-01',15000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into orders values(3,3,'2022-03-05',17000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from orders;
+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|       1 |          1 | 2020-01-01 |    12000.00 |
|       2 |          2 | 2021-02-01 |    15000.00 |
|       3 |          3 | 2022-03-05 |    17000.00 |
+---------+------------+------------+-------------+
3 rows in set (0.00 sec)

mysql> SELECT
    ->     Orders.OrderID,
    ->     Orders.OrderDate,
    ->     Orders.TotalAmount,
    ->     Customers.CustomerID,
    ->     Customers.Name,
    ->     Customers.Email,
    ->     Customers.City
    -> FROM Orders
    -> JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
+---------+------------+-------------+------------+------+-------------+------------+
| OrderID | OrderDate  | TotalAmount | CustomerID | Name | Email       | City       |
+---------+------------+-------------+------------+------+-------------+------------+
|       1 | 2020-01-01 |    12000.00 |          1 | A    | a@gmail.com | coimbatore |
|       2 | 2021-02-01 |    15000.00 |          2 | B    | b@gmail.com | bangalore  |
|       3 | 2022-03-05 |    17000.00 |          3 | C    | c@gmail.com | andhra     |
+---------+------------+-------------+------------+------+-------------+------------+
3 rows in set (0.00 sec)

mysql> SELECT
    ->     Customers.CustomerID,
    ->     Customers.Name,
    ->     Orders.OrderID,
    ->     Orders.OrderDate,
    ->     Orders.TotalAmount
    -> FROM Customers
    -> LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
+------------+------+---------+------------+-------------+
| CustomerID | Name | OrderID | OrderDate  | TotalAmount |
+------------+------+---------+------------+-------------+
|          1 | A    |       1 | 2020-01-01 |    12000.00 |
|          2 | B    |       2 | 2021-02-01 |    15000.00 |
|          3 | C    |       3 | 2022-03-05 |    17000.00 |
+------------+------+---------+------------+-------------+
3 rows in set (0.00 sec)

mysql> SELECT
    ->     Customers.CustomerID,
    ->     Customers.Name,
    ->     SUM(Orders.TotalAmount) AS TotalSpent
    -> FROM Customers
    -> JOIN Orders ON Customers.CustomerID = Orders.CustomerID
    -> GROUP BY Customers.CustomerID, Customers.Name;
+------------+------+------------+
| CustomerID | Name | TotalSpent |
+------------+------+------------+
|          1 | A    |   12000.00 |
|          2 | B    |   15000.00 |
|          3 | C    |   17000.00 |
+------------+------+------------+
3 rows in set (0.00 sec)