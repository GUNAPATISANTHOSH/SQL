mysql show databases;
+--------------------+
| Database           |
+--------------------+
| db4                |
| dbone              |
| dbthree            |
| farm               |
| farmwise           |
| information_schema |
| mysql              |
| onedb              |
| performance_schema |
| products           |
| sakila             |
| santhosh           |
| sys                |
+--------------------+
13 rows in set (0.102 sec)

mysql> use santhosh
Database changed
mysql> show tables;
+--------------------+
| Tables_in_santhosh |
+--------------------+
| employee           |
+--------------------+
1 row in set (0.079 sec)

mysql> select * from employees;

mysql> select * from employee;
+------+----------+----------+------+------+
| eid  | ename    | sal      | age  | loc  |
+------+----------+----------+------+------+
|    1 | santhosh |  45000.4 |   21 | AP   |
|    2 | elaya    |  55000.4 |   21 | TN   |
|    3 | krishna  |  65000.4 |   25 | AP   |
| NULL | ravi     | 23313200 |   22 | bng  |
|    7 | sukumar  |  3455430 |   19 | bng  |
|   10 |          |  3455430 |  199 | bng  |
+------+----------+----------+------+------+
6 rows in set (0.439 sec)

mysql> create table students;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table students(
    -> student_id int ,
    -> student_name VARCHAR(32) NOT NULL,
    -> age int ,
    -> city VARCHAR (32) DEFAULT "BNG"
    -> );
Query OK, 0 rows affected (0.490 sec)

mysql> desc students;;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| student_id   | int         | YES  |     | NULL    |       |
| student_name | varchar(32) | NO   |     | NULL    |       |
| age          | int         | YES  |     | NULL    |       |
| city         | varchar(32) | YES  |     | BNG     |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.411 sec)

mysql> insert into students
    -> values
    -> (101,"Rahul",20,"chennai");
Query OK, 1 row affected (0.452 sec)

mysql> insert into students
    -> values
    -> (102,"priya",21,"chennai"),
    -> (103,"arjun",19,"Hyderabad");
Query OK, 2 rows affected (0.533 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from students;
+------------+--------------+------+-----------+
| student_id | student_name | age  | city      |
+------------+--------------+------+-----------+
|        101 | Rahul        |   20 | chennai   |
|        102 | priya        |   21 | chennai   |
|        103 | arjun        |   19 | Hyderabad |
+------------+--------------+------+-----------+
3 rows in set (0.014 sec)