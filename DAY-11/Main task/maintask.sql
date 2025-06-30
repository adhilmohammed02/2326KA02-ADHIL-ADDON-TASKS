mysql> CREATE TABLE Sales (
    ->     SaleID INT PRIMARY KEY,
    ->     ProductID INT,
    ->     ProductName VARCHAR(100),
    ->     CustomerID INT,
    ->     SaleDate DATE,
    ->     Quantity INT,
    ->     UnitPrice DECIMAL(10,2),
    ->     Region VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO SALES VALUES(1,1,'SOAP',1,'2000-01-01',20,2000,'US');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO SALES VALUES(2,2,'CANDLE',2,'2001-02-01',30,5000,'UK');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO SALES VALUES(3,3,'FURNITURE',3,'2002-03-01',30,35000,'AUSTRALIA');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM SALES;
+--------+-----------+-------------+------------+------------+----------+-----------+-----------+
| SaleID | ProductID | ProductName | CustomerID | SaleDate   | Quantity | UnitPrice | Region    |
+--------+-----------+-------------+------------+------------+----------+-----------+-----------+
|      1 |         1 | SOAP        |          1 | 2000-01-01 |       20 |   2000.00 | US        |
|      2 |         2 | CANDLE      |          2 | 2001-02-01 |       30 |   5000.00 | UK        |
|      3 |         3 | FURNITURE   |          3 | 2002-03-01 |       30 |  35000.00 | AUSTRALIA |
+--------+-----------+-------------+------------+------------+----------+-----------+-----------+
3 rows in set (0.00 sec)

mysql> SELECT
    ->     ProductName,
    ->     SUM(Quantity) AS TotalUnitsSold,
    ->     SUM(Quantity * UnitPrice) AS TotalSalesAmount
    -> FROM Sales
    -> GROUP BY ProductName
    -> ORDER BY TotalSalesAmount DESC;
+-------------+----------------+------------------+
| ProductName | TotalUnitsSold | TotalSalesAmount |
+-------------+----------------+------------------+
| FURNITURE   |             30 |       1050000.00 |
| CANDLE      |             30 |        150000.00 |
| SOAP        |             20 |         40000.00 |
+-------------+----------------+------------------+
3 rows in set (0.00 sec)

mysql> SELECT
    ->     Region,
    ->     SUM(Quantity) AS TotalUnits,
    ->     SUM(Quantity * UnitPrice) AS TotalSales
    -> FROM Sales
    -> GROUP BY Region
    -> ORDER BY TotalSales DESC;
+-----------+------------+------------+
| Region    | TotalUnits | TotalSales |
+-----------+------------+------------+
| AUSTRALIA |         30 | 1050000.00 |
| UK        |         30 |  150000.00 |
| US        |         20 |   40000.00 |
+-----------+------------+------------+
3 rows in set (0.00 sec)

mysql> SELECT
    ->     SaleDate,
    ->     COUNT(SaleID) AS TotalTransactions,
    ->     SUM(Quantity * UnitPrice) AS DailySales
    -> FROM Sales
    -> GROUP BY SaleDate
    -> ORDER BY SaleDate;
+------------+-------------------+------------+
| SaleDate   | TotalTransactions | DailySales |
+------------+-------------------+------------+
| 2000-01-01 |                 1 |   40000.00 |
| 2001-02-01 |                 1 |  150000.00 |
| 2002-03-01 |                 1 | 1050000.00 |
+------------+-------------------+------------+
3 rows in set (0.00 sec)

mysql> SELECT
    ->     DATE_FORMAT(SaleDate, '%Y-%m') AS Month,
    ->     SUM(Quantity) AS TotalUnits,
    ->     SUM(Quantity * UnitPrice) AS MonthlySales
    -> FROM Sales
    -> GROUP BY DATE_FORMAT(SaleDate, '%Y-%m')
    -> ORDER BY Month;
+---------+------------+--------------+
| Month   | TotalUnits | MonthlySales |
+---------+------------+--------------+
| 2000-01 |         20 |     40000.00 |
| 2001-02 |         30 |    150000.00 |
| 2002-03 |         30 |   1050000.00 |
+---------+------------+--------------+
3 rows in set (0.00 sec)