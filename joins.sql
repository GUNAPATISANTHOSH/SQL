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
