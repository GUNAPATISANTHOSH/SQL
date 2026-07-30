CREATE TABLE customers(
    cust_id int ,
    name VARCHAR(32) NOT NULL,
    gender VARCHAR(32) NOT NULL,
    age int check(age>=10),
    loc VARCHAR(32) default "bng",
    PRIMARY KEY (cust_id)
);
 insert into customers
    -> values
    -> (101,"rg","Male",52),
    -> (102,"sg","FeMale",80),
    -> (103,"pg","FeMale",42),
    -> (104,"modi","Male",78),
    -> (105,"sukumaR","Male",24);

CREATE TABLE orders(
    order_id int ,
    detais VARCHAR(32) NOT NULL,
    amount float  NOT NULL,
    custs_id int, 
    status VARCHAR(32) DEFAULT "open",
    PRIMARY KEY (order_id),
    FOREIGN KEY (custs_id) REFERENCES customers(cust_id)
);

mysql> desc orders;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| order_id | int         | NO   | PRI | NULL    |       |
| detais   | varchar(32) | NO   |     | NULL    |       |
| amount   | float       | NO   |     | NULL    |       |
| custs_id | int         | YES  | MUL | NULL    |       |
| status   | varchar(32) | YES  |     | open    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.047 sec)
