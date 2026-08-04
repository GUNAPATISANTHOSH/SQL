create table dept(
dept_id int,
dept_name VARCHAR(32) NOT NULL,
dept_loc VARCHAR(32) default "bng",
dept_budget float check(dept_budget >= 500000),
PRIMARY KEY(dept_id)
);

create table employees(
eid INT,
ename VARCHAR(32) NOT NULL,
city VARCHAR(32) NOT NULL,
dept_id INT,
PRIMARY KEY(eid),
FOREIGN KEY(dept_id) REFERENCES dept(dept_id)
);

INSERT INTO employees
VALUES
(1,"Rajiv","BNG",101);


INSERT INTO dept
VALUES
(102,"SALES","BNG",600000240),
(103,"SALES","BNG",600004300),
(104,"ADMIN","NOIDA",605400000),
(105,"ADMIN","Gandhi Nagar",43540000)


-- matched rows from both tables 
select * from employee,dept
where employees.dept_id 
