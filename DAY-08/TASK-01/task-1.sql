mysql> create database Student;
Query OK, 1 row affected (0.02 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| student            |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use student;
Database changed
mysql> create table Student ( sname varchar(50),sroll int, sgmail varchar(50), phnum int);
Query OK, 0 rows affected (0.08 sec)

mysql> create table Course(Coursefee int);
Query OK, 0 rows affected (0.04 sec)