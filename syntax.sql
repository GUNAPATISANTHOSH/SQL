mysql -uroot -proot

show databases;
CREATE DATABASE dbone;
USE dbone
show TABLES

CREATE TABLE employees(
    eid int,
    ename VARCHAR(32),
    esal FLOAT
);

mysql> DESC employees
    -> ;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | YES  |     | NULL    |       |
| ename | varchar(32) | YES  |     | NULL    |       |
| esal  | float       | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.473 sec)

SELECT * FROM employees;

INSERT INTO employees
values
(101,'rahul',45000.45);



mysql> DESC employees
    -> ;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | YES  |     | NULL    |       |
| ename | varchar(32) | YES  |     | NULL    |       |
| esal  | float       | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.031 sec)

mysql> SELECT * FROM employees;
+------+-------+---------+
| eid  | ename | esal    |
+------+-------+---------+
|  101 | rahul | 45000.4 |
+------+-------+---------+
1 row in set (0.013 sec)

mysql> INSERT INTO employees
    -> values
    -> (102,'sonia',55000.76),
    -> (103,'rajiv',65000.65);
Query OK, 2 rows affected (0.465 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employees;
+------+-------+---------+
| eid  | ename | esal    |
+------+-------+---------+
|  101 | rahul | 45000.4 |
|  102 | sonia | 55000.8 |
|  103 | rajiv | 65000.6 |
+------+-------+---------+
3 rows in set (0.012 sec)
mysql> INSERT INTO employees (eid,ename)
    -> values
    -> (104,'modi');
Query OK, 1 row affected (0.438 sec)

mysql> SELECT * FROM employees;
+------+-------+---------+
| eid  | ename | esal    |
+------+-------+---------+
|  101 | rahul | 45000.4 |
|  102 | sonia | 55000.8 |
|  103 | rajiv | 65000.6 |
|  104 | modi  |    NULL |
+------+-------+---------+
4 rows in set (0.010 sec)

mysql> DELETE FROM employees;
Query OK, 4 rows affected (0.419 sec)

mysql> SELECT * FROM employees;
Empty set (0.010 sec)

drop table employees;
mysql> update employees
    -> set esal=100000.32;
Query OK, 3 rows affected (0.078 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select * from employees;
+------+-------+--------+
| eid  | ename | esal   |
+------+-------+--------+
|  101 | rahul | 100000 |
|  102 | sonia | 100000 |
|  103 | rajiv | 100000 |
+------+-------+--------+
3 rows in set (0.012 sec)

update employeees
set emp='rahul gandhi'
where eid=101
Query OK, 1 row affected (0.426 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employees;
+------+-------------+--------+
| eid  | ename       | esal   |
+------+-------------+--------+
|  101 | rahulgandhi | 100000 |
|  102 | sonia       | 100000 |
|  103 | rajiv       | 100000 |
+------+-------------+--------+
3 rows in set (0.011 sec)