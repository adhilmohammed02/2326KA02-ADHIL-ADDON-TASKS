
mysql>CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    JoinDate DATE,
    Status VARCHAR(20)  -- e.g., 'Active', 'Inactive'
);
Query OK, 0 rows affected (0.07 sec)

mysql> insert into customer values(1,'john','john@gmail.com',123456789,'coimbatore','2000-01-01','active');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values(2,'abi','abi@gmail.com',987654321,'coimbatore','2001-02-01','inactive');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values(3,'yash','yash@gmail.com',9437473221,'coimbatore','2002-03-02','active');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+------------+-------+-----------------+------------+------------+------------+----------+
| CustomerID | Name  | Email           | Phone      | City       | JoinDate   | Status   |
+------------+-------+-----------------+------------+------------+------------+----------+
|          1 | john  | john@gmail.com  | 123456789  | coimbatore | 2000-01-01 | active   |
|          2 | abi   | abi@gmail.com   | 987654321  | coimbatore | 2001-02-01 | inactive |
|          3 | yash  | yash@gmail.com  | 9437473221 | coimbatore | 2002-03-02 | active   |
+------------+-------+-----------------+------------+------------+------------+----------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM Customer
    -> WHERE City = 'Coimbatore';
+------------+-------+-----------------+------------+------------+------------+----------+
| CustomerID | Name  | Email           | Phone      | City       | JoinDate   | Status   |
+------------+-------+-----------------+------------+------------+------------+----------+
|          1 | john  | john@gmail.com  | 123456789  | coimbatore | 2000-01-01 | active   |
|          2 | priya | priya@gmail.com | 987654321  | coimbatore | 2001-02-01 | inactive |
|          3 | Aishu | aishu@gmail.com | 9437473221 | coimbatore | 2002-03-02 | active   |
+------------+-------+-----------------+------------+------------+------------+----------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM Customer
    -> WHERE Status = 'Active';
+------------+-------+-----------------+------------+------------+------------+--------+
| CustomerID | Name  | Email           | Phone      | City       | JoinDate   | Status |
+------------+-------+-----------------+------------+------------+------------+--------+
|          1 | john  | john@gmail.com  | 123456789  | coimbatore | 2000-01-01 | active |
|          3 | yash  | yash@gmail.com  | 9437473221 | coimbatore | 2002-03-02 | active |
+------------+-------+-----------------+------------+------------+------------+--------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM Customer
    -> WHERE JoinDate > '2000-01-01';
+------------+-------+-----------------+------------+------------+------------+----------+
| CustomerID | Name  | Email           | Phone      | City       | JoinDate   | Status   |
+------------+-------+-----------------+------------+------------+------------+----------+
|          2 | abi   | abi@gmail.com   | 9876543213 | coimbatore | 2001-02-01 | inactive |
|          3 | yash  | yash@gmail.com  | 9437473221 | coimbatore | 2002-03-02 | active   |
+------------+-------+-----------------+------------+------------+------------+----------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM Customer
    -> WHERE Name LIKE '%john%';
+------------+------+----------------+-----------+------------+------------+--------+
| CustomerID | Name | Email          | Phone     | City       | JoinDate   | Status |
+------------+------+----------------+-----------+------------+------------+--------+
|          1 | john | john@gmail.com | 123456789 | coimbatore | 2000-01-01 | active |
+------------+------+----------------+-----------+------------+------------+--------+
1 row in set (0.00 sec)

mysql> SELECT * FROM Customer
    -> WHERE City = 'coimbatore'
    ->   AND Status = 'Active'
    ->   AND JoinDate BETWEEN '2023-01-01' AND '2024-12-31';
Empty set (0.00 sec)