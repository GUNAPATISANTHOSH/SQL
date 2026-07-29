NOT NULL -(null values are not allowed but duplicated allowed)
UNIQUE Duplicates not alllowed but null values allowed
check
Default
PK
FK
INDEX


create table employees(
eid INT UNIQUE,
ename VARCHAR(32) NOT NULL,
esal float,
age int CHECK(age>=18),
loc VARCHAR(32) DEFAULT "bng"
);
mysql> desc employees;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | YES  | UNI | NULL    |       |
| ename | varchar(32) | NO   |     | NULL    |       |
| esal  | float       | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
| loc   | varchar(32) | YES  |     | bng     |       |
+-------+-------------+------+-----+---------+-------+
5 rows in set (0.043 sec)

mysql> insert into employees
    -> values
    -> (101,'rajiv',45000,45,52,'wayand');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into employees
    -> values
    -> (101,'rajiv',45000.45,52,'wayand');
Query OK, 1 row affected (0.403 sec)

mysql> insert into employees
    -> values
    -> (101,'rajiv',45000.45,52,'wayand');
ERROR 1062 (23000): Duplicate entry '101' for key 'employees.eid'
mysql> ^C
mysql> insert into employees(eid ,ename,esal,age)
    -> values
    -> (102,'rajiv',45000.45,52);
Query OK, 1 row affected (0.058 sec)

mysql> select * from employees;
+------+-------+---------+------+--------+
| eid  | ename | esal    | age  | loc    |
+------+-------+---------+------+--------+
|  101 | rajiv | 45000.4 |   52 | wayand |
|  102 | rajiv | 45000.4 |   52 | bng    |
+------+-------+---------+------+--------+