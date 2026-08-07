create table orders(
order_id int ,
details VARCHAR(32) NOT NULL,
amount FLOAT NOT NULL,
cust_id INT ,
status DEFAULT "open",
PRIMARY KEY (order_id),
FOREIGN KEY (cust_id) REFERENCES customers(c_id)
);

CREATE TABLE customers(
c_id INT,
cust_name VARCHAR(32) NOT NULL,
gender VARCHAR(32) NOT NULL,
age INT CHECK(age>=18),
PRIMARY KEY (c_id)
);

INSERT INTO customers
VALUES
(101,'Rahul Gandhi','Male',52),
(102,'Sonia Gandhi','Female',82),
(103,'Priya Gandhi','Female',32),
(104,'Modi','Male',75),
(105,'Amith','Male',78),
(106,'vijay','Male',24);

INSERT INTO orders
VALUES
(1001,'Marker-pen Set-1',300,101,'Open'),
(1002,'Pens holderSet-2',400,101,'Closed'),
(1003,'Lenovo Mousepad',800,101,'Closed');


INSERT INTO orders
VALUES
(1004,'ThinkPad',30000,102,'Open'),
(1005,'Mouse Pad',400,102,'Closed');


INSERT INTO orders
VALUES
(1006,'Electric Bulb',900,103,'Open'),
(1007,'Mac BookPro',10000400,103,'Opend'),
(1008,'Lenovo Mousepad',800,103,'Closed'),
(1009,'Lenovo Mousepad',800,103,'Closed');



INSERT INTO orders
VALUES
(1010,'Apple Mobile',3000,106,'Open'),
(1011,'FitBit',400,106	,'Closed');

select * from customers,orders;

select * from customers,orders
where customers.c_id = orders.cust_id;

SELECT * from customers
INNER JOIN
orders
ON customers.c_id=orders.cust_id;


