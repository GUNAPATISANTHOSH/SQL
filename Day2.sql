mysql> CREATE DATABASE dbthree;
Query OK, 1 row affected (0.212 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| dbone              |
| dbthree            |
| farm               |
| farmwise           |
| information_schema |
| mysql              |
| performance_schema |
| products           |
| sakila             |
| sys                |
+--------------------+
10 rows in set (0.059 sec)

mysql> use database dbthree;
ERROR 1049 (42000): Unknown database 'database'
mysql> use dbthree;
Database changed
mysql> CREATE TABLE workers;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> CREATE TABLE workers
    -> (pid int,
    -> pname VARCHAR (32),
    -> price FLOAT,
    -> Category VARCHAR (32)
    -> );
Query OK, 0 rows affected (0.433 sec)

mysql> desc workers;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| pid      | int         | YES  |     | NULL    |       |
| pname    | varchar(32) | YES  |     | NULL    |       |
| price    | float       | YES  |     | NULL    |       |
| Category | varchar(32) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.066 sec)

mysql> select * from workers;
Empty set (0.037 sec)

mysql> insert into workers
    -> values
    -> (1,'pen',20.25,'stationary');
Query OK, 1 row affected (0.236 sec)

mysql> select * from workers;
+------+-------+-------+------------+
| pid  | pname | price | Category   |
+------+-------+-------+------------+
|    1 | pen   | 20.25 | stationary |
+------+-------+-------+------------+
1 row in set (0.011 sec)

mysql> insert into workers
    -> values
    -> (2,'book',40.25,'stationary')
    -> (3,'mobile',40.25,'electronics')
    -> (4,'laptop',4000000.25,'electronics');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(3,'mobile',40.25,'electronics')
(4,'laptop',4000000.25,'electronics')' at line 4
mysql> insert into workers
    -> values
    -> (2,'book',40.25,'stationary'),
    -> (3,'mobile',40.25,'electronics'),
    -> (4,'laptop',4000000.25,'electronics');
Query OK, 3 rows affected (0.140 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from workers;
+------+--------+---------+-------------+
| pid  | pname  | price   | Category    |
+------+--------+---------+-------------+
|    1 | pen    |   20.25 | stationary  |
|    2 | book   |   40.25 | stationary  |
|    3 | mobile |   40.25 | electronics |
|    4 | laptop | 4000000 | electronics |
+------+--------+---------+-------------+
4 rows in set (0.012 sec)


class-2

mysql -uroot -proot

system cls;

show databases;

CREATE DATABASE dbthree;
USE dbthree;
show tables;
CREATE TABLE products();

CREATE TABLE products(
pid int,  
name VARCHAR(32),
price float,
category VARCHAR(32)
);

DESC products;

INSERT INTO products
VALUES
(101,'Marker Pen -one',35.35,'Stationary');

SELECT *FROM products;


INSERT INTO products
VALUES
(102,'Marker Pen -Two',35.35,'Stationary'),
(103,'Marker Pen -Three',45.35,'Stationary'),
(104,'Marker Pen -Four',55.35,'Stationary'),
(105,'Marker Pen -Five',65.35,'Stationary');

INSERT INTO products(pid,name)
VALUES
(106,'ThinkPad');

SELECT *FROM products;

UPDATE products
SET name="Lenovo TP"
WHERE pid=106;

UPDATE products
SET price=5.0;

DELETE FROM products;

DROP TABLE products;

DROP DATABASE dbthree;