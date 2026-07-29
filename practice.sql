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
10 rows in set (0.087 sec)

mysql> create database santhosh;
Query OK, 1 row affected (0.568 sec)

mysql> use santhosh;
Database changed
mysql> create table employee;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table employee
    -> (eid int UNIQUE,
    -> ename VARCHAR (32) NOT NULL,
    -> sal FLOAT ,
    -> age INT check(age>=18),
    -> loc VARCHAR(32) DEFAULT "bng");
Query OK, 0 rows affected (1.256 sec)

mysql> desc santhosh;
ERROR 1146 (42S02): Table 'santhosh.santhosh' doesn't exist
mysql> select * from santhosh;
ERROR 1146 (42S02): Table 'santhosh.santhosh' doesn't exist
mysql> select * from employee;
Empty set (0.045 sec)

mysql> desc employee;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | YES  | UNI | NULL    |       |
| ename | varchar(32) | NO   |     | NULL    |       |
| sal   | float       | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
| loc   | varchar(32) | YES  |     | bng     |       |
+-------+-------------+------+-----+---------+-------+
5 rows in set (0.035 sec)

mysql> insert into employee
    -> values
    -> (1,'santhosh',45000.45,21,'AP');
Query OK, 1 row affected (0.419 sec)

mysql> select * from employee;
+------+----------+---------+------+------+
| eid  | ename    | sal     | age  | loc  |
+------+----------+---------+------+------+
|    1 | santhosh | 45000.4 |   21 | AP   |
+------+----------+---------+------+------+
1 row in set (0.011 sec)

mysql> insert into employee
    -> values
    -> (2,'elaya',55000.45,21,'TN'),
    -> (3,'krishna',65000.45,25,'AP');
Query OK, 2 rows affected (0.449 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------+----------+---------+------+------+
| eid  | ename    | sal     | age  | loc  |
+------+----------+---------+------+------+
|    1 | santhosh | 45000.4 |   21 | AP   |
|    2 | elaya    | 55000.4 |   21 | TN   |
|    3 | krishna  | 65000.4 |   25 | AP   |
+------+----------+---------+------+------+
3 rows in set (0.015 sec)

mysql> insert into employee
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> insert into employee(ename,age,sal)
    -> values
    -> ('ravi',22,23313231);
Query OK, 1 row affected (0.473 sec)

mysql> select * from employee;
+------+----------+----------+------+------+
| eid  | ename    | sal      | age  | loc  |
+------+----------+----------+------+------+
|    1 | santhosh |  45000.4 |   21 | AP   |
|    2 | elaya    |  55000.4 |   21 | TN   |
|    3 | krishna  |  65000.4 |   25 | AP   |
| NULL | ravi     | 23313200 |   22 | bng  |
+------+----------+----------+------+------+
4 rows in set (0.013 sec)

mysql> insert into employee
    -> values(
    -> 1,'sukumar',3455432,12,'bng');
ERROR 3819 (HY000): Check constraint 'employee_chk_1' is violated.
mysql> insert into employee
    -> values(
    -> 7,'sukumar',3455432,12,'bng');
ERROR 3819 (HY000): Check constraint 'employee_chk_1' is violated.
mysql> insert into employee
    -> values(
    -> 7,'sukumar',3455432,19,'bng');
Query OK, 1 row affected (0.434 sec)

mysql> insert into employee
    -> values(
    -> 7,'sukumaran',3455432,19,'bng');
ERROR 1062 (23000): Duplicate entry '7' for key 'employee.eid'
mysql> select * from employee;
+------+----------+----------+------+------+
| eid  | ename    | sal      | age  | loc  |
+------+----------+----------+------+------+
|    1 | santhosh |  45000.4 |   21 | AP   |
|    2 | elaya    |  55000.4 |   21 | TN   |
|    3 | krishna  |  65000.4 |   25 | AP   |
| NULL | ravi     | 23313200 |   22 | bng  |
|    7 | sukumar  |  3455430 |   19 | bng  |
+------+----------+----------+------+------+
5 rows in set (0.011 sec)

mysql> insert into employee
    -> values(
    -> 10,'',3455432,12,'bng');
ERROR 3819 (HY000): Check constraint 'employee_chk_1' is violated.
mysql> insert into employee
    -> values(
    -> 10,'',3455432,199,'bng');
Query OK, 1 row affected (0.528 sec)

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
+------+----------+----------+------+-x-----+
6 rows in set (0.012 sec)

mysql> insert into employee
    -> values(
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> insert into employee(eid,sal,age)
    -> values
    -> (121,344567,21);
ERROR 1364 (HY000): Field 'ename' doesn't have a default value
mysql> insert into employee(eid,ename,sal,age)
    -> values
    -> (121,344567,21);
ERROR 1136 (21S01): Column count doesn't match value count at row 1

insert into employee(eid,sal,age)
values
(121,344567,21);