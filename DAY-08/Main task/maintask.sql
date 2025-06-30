create table library(booknumber int, bookname char(20));
Query OK, 1 row affected (0.02 sec)

insert into library values(1,"The Jungle Book");
Query OK, 1 row affected (0.04 sec)

insert into library values(2,"Famous Five");

Query OK, 1 row affected (0.04 sec)

insert into library values(3,"Wings of Fire");
Query OK, 1 row affected (0.04 sec)

select * from library;
+------------+-----------------+
| booknumber | bookname        |
+------------+-----------------+
|          1 | The Jungle Book |
|          2 | Famous Five     |
|          3 | Wings of Fire   |
+------------+-----------------+
3 rows in set (0.00 sec)

create table books(booknumber int, bookname char(20), bookedby char(20), cost int);
Query OK, 1 row affected (0.02 sec)

insert into books values(1,"The Jungle Book","Sean",250);
Query OK, 1 row affected (0.04 sec)

insert into books values(2,"Famous Five","Sefika",300);

Query OK, 1 row affected (0.04 sec)

insert into books values(3,"Wings of Fire","Deborah",400);
Query OK, 1 row affected (0.04 sec)

select * from books;
+------------+-----------------+----------+------+
| booknumber | bookname        | bookedby | cost |
+------------+-----------------+----------+------+
|          1 | The Jungle Book | Sean     |  250 |
|          2 | Famous Five     | Sefika   |  300 |
|          3 | Wings of Fire   | Deborah  |  400 |
+------------+-----------------+----------+------+
Query OK, 3 rows affected (0.02 sec)


create table booktypes(booknumber int, booksubject char(20), cost int);
Query OK, 1 row affected (0.02 sec)

insert into booktypes values(1,"English", 500);
Query OK, 1 row affected (0.02 sec)

insert into booktypes values(2,"Economics", 600);
Query OK, 1 row affected (0.02 sec)

insert into booktypes values(3,"Maths", 700);
Query OK, 1 row affected (0.02 sec)

select * from booktypes;
+------------+-------------+------+
| booknumber | booksubject | cost |
+------------+-------------+------+
|          1 | English     |  500 |
|          2 | Economics   |  600 |
|          3 | Maths       |  700 |
+------------+-------------+------+
Query OK, 3 rows affected (0.02 sec)