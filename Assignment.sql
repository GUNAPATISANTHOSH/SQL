CREATE DATABASE Assignement;

use Assignement;

create table employee (
	eid INT ,
	fname VARCHAR(32),
	lname VARCHAR(32),
	city VARCHAR(32),
	esal INT,
	age INT,
	PRIMARY KEY(eid)
);


insert into employee values
(101,'Rahul','Gandhi','Wayanad',45000,52),
(102,'Sonia','Gandhi','New Delhi',55000,75),
(103,'Priyanka','Gandhi','Nodia',65000,45),
(104,'Modi','Narendra','New Delhi',75000,69),
(105,'Rajni','Kanth','Chennai',85000,65),
(106,'Vijay','Setupathi','Chennai',95000,47),
(107,'Nayana','Tara','Chennai',25000,40),
(108,'Alia','Bhut','Mumbai',45000,31),
(109,'Mahesh','Bhut','Mumbai',15000,68),
(110,'Sonam','Kapoor','Mumbai',30000,27),
(111,'Anil','Kapoor','Mumbai',38000,40),
(112,'Raj','Kapoor','Mumbai',18000,78),
(113,'Vishnu','Manchu','Hyderabad',10000,40),
(114,'Manoj','Manchu','Hyderabad',12000,35);


select * from employee;

+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 102 | Sonia    | Gandhi    | New Delhi | 55000 |   75 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 113 | Vishnu   | Manchu    | Hyderabad | 10000 |   40 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
+-----+----------+-----------+-----------+-------+------+

INSERT INTO employee (eid,fname,lname,city,age)
values
(115,'Mohan','Manchu','Hyderabad',70);

+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 102 | Sonia    | Gandhi    | New Delhi | 55000 |   75 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 113 | Vishnu   | Manchu    | Hyderabad | 10000 |   40 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
| 115 | Mohan    | Manchu    | Hyderabad |  NULL |   70 |
+-----+----------+-----------+-----------+-------+------+

-- Write a query to fetch employee whose last name is same.

-- 2. Write a query to fetch whose age is grater then 70.

select age from employee
where age>=70;

+-----+-------+--------+-----------+-------+------+
| eid | fname | lname  | city      | esal  | age  |
+-----+-------+--------+-----------+-------+------+
| 102 | Sonia | Gandhi | New Delhi | 55000 |   75 |
| 112 | Raj   | Kapoor | Mumbai    | 18000 |   78 |
| 115 | Mohan | Manchu | Hyderabad |  NULL |   70 |
+-----+-------+--------+-----------+-------+------+
select count(*)
from employee
where age>70;
+----------+
| count(*) |
+----------+
|        2 |
+----------+
1 row in set (0.017 sec)

select count(*) AS "NO.of employees"
from employee
where age>70;
+-----------------+
| NO.of employees |
+-----------------+
|               2 |
+-----------------+
1 row in set (0.007 sec)

-- 4. Write a query to fetch whose name ends with 'h'.

select * from employee
where lname like '%h';

+-----+-------+-------+---------+-------+------+
| eid | fname | lname | city    | esal  | age  |
+-----+-------+-------+---------+-------+------+
| 105 | Rajni | Kanth | Chennai | 85000 |   65 |
+-----+-------+-------+---------+-------+------+


wildcard operators
% -  macthes more than one character
- - macthes only one character

-- 5. Write a query to count employee whose last name ends with 'i'.

SELECT COUNT(*) 
where lname like "%i";

-- 6. Write a query to find employee with highest salary.

SELECT * FROM employee
WHERE esal=(SELECT MAX(esal) 
FROM employee
);

+-----+-------+-----------+---------+-------+------+
| eid | fname | lname     | city    | esal  | age  |
+-----+-------+-----------+---------+-------+------+
| 106 | Vijay | Setupathi | Chennai | 95000 |   47 |
+-----+-------+-----------+---------+-------+------+

-- 7. Write a query to find employee with lowest salary.

SELECT * from employee
where esal = (
select MIN(esal)
from employee
);

8. Write a query to change last name of employee whose id is 102.

update employee
set lname="ssingh"
where eid =102;

+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 102 | Sonia    | ssingh    | New Delhi | 55000 |   75 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 113 | Vishnu   | Manchu    | Hyderabad | 10000 |   40 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
| 115 | Mohan    | Manchu    | Hyderabad |  NULL |   70 |
+-----+----------+-----------+-----------+-------+------+

-- Write a query to find name of employee whose name start's with 'A' and city name starts with 'B
SELECT * from employee
where fname like 'A%'and city like 'B%';

-- 10. Write a query to find employee with highest salary in 'New Delhi'.

SELECT *FROM employee
WHERE esal = (
    SELECT MAX(esal)
    FROM employee
    WHERE city = 'New Delhi'
);

+-----+-------+----------+-----------+-------+------+
| eid | fname | lname    | city      | esal  | age  |
+-----+-------+----------+-----------+-------+------+
| 104 | Modi  | Narendra | New Delhi | 75000 |   69 |
+-----+-------+----------+-----------+-------+------+

-- 11. Write a query to find employee who line in 'New Delhi' with age above 70.

SELECT * from employee
where age>70 and city ="New Delhi";

+-----+-------+--------+-----------+-------+------+
| eid | fname | lname  | city      | esal  | age  |
+-----+-------+--------+-----------+-------+------+
| 102 | Sonia | ssingh | New Delhi | 55000 |   75 |
+-----+-------+--------+-----------+-------+------+

12. Write a query to find employee with salary below 50000.

SELECT * from employee
where esal<=50000;

+-----+--------+--------+-----------+-------+------+
| eid | fname  | lname  | city      | esal  | age  |
+-----+--------+--------+-----------+-------+------+
| 101 | Rahul  | Gandhi | Wayanad   | 45000 |   52 |
| 107 | Nayana | Tara   | Chennai   | 25000 |   40 |
| 108 | Alia   | Bhut   | Mumbai    | 45000 |   31 |
| 109 | Mahesh | Bhut   | Mumbai    | 15000 |   68 |
| 110 | Sonam  | Kapoor | Mumbai    | 30000 |   27 |
| 111 | Anil   | Kapoor | Mumbai    | 38000 |   40 |
| 112 | Raj    | Kapoor | Mumbai    | 18000 |   78 |
| 113 | Vishnu | Manchu | Hyderabad | 10000 |   40 |
| 114 | Manoj  | Manchu | Hyderabad | 12000 |   35 |
+-----+--------+--------+-----------+-------+------+

-- Write a query to find name of employee with salary range between 20000 to 40000.

select * from employee
where esal>20000
and esal<40000;


select fname,lname from employee
    -> where esal>20000
    -> and esal<40000;
+--------+--------+
| fname  | lname  |
+--------+--------+
| Nayana | Tara   |
| Sonam  | Kapoor |
| Anil   | Kapoor |
+--------+--------+

-- 14. Write a query to find employee whose first name third character is 'j'.

SELECT * from employee 
where fname like "__j%";
+-----+-------+-----------+---------+-------+------+
| eid | fname | lname     | city    | esal  | age  |
+-----+-------+-----------+---------+-------+------+
| 105 | Rajni | Kanth     | Chennai | 85000 |   65 |
| 106 | Vijay | Setupathi | Chennai | 95000 |   47 |
| 112 | Raj   | Kapoor    | Mumbai  | 18000 |   78 |
+-----+-------+-----------+---------+-------+------+

-- Write a query to find employee whose first name third character is 'j' and live in 'New Delhi'.

select * from employee
where fname like "__j%"
and city="New Delhi";

-- 16. Write a query to count employees whose first name third character is 'j'.

select count(*) from employee
where fname like "__j%";

-- 17. Write a query to fetch employee with lowest salary and add 10000 to its salary.

select esal from employee
where esal=(SELECT MIN(esal) FROM employee);
update employee
set esal=esal+10000
where esal = 10000
;

mysql> select esal from employee
    -> where esal=(SELECT MIN(esal) FROM employee);
+-------+
| esal  |
+-------+
| 10000 |
+-------+
1 row in set (0.015 sec)

mysql> update employee
    -> set esal=esal+10000
    -> where esal = 10000
    -> ;
Query OK, 1 row affected (0.122 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 102 | Sonia    | ssingh    | New Delhi | 55000 |   75 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 113 | Vishnu   | Manchu    | Hyderabad | 20000 |   40 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
| 115 | Mohan    | Manchu    | Hyderabad |  NULL |   70 |
+-----+----------+-----------+-----------+-------+------+
15 rows in set (0.005 sec)

-- 18. Write a query to Sort the table by ascending.

SELECT * from employee
ORDER BY esal ASC;

+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 115 | Mohan    | Manchu    | Hyderabad |  NULL |   70 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 113 | Vishnu   | Manchu    | Hyderabad | 20000 |   40 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 102 | Sonia    | ssingh    | New Delhi | 55000 |   75 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
+-----+----------+-----------+-----------+-------+------+

-- 19. Write a query to Sort the table by descending.

SELECT * FROM employee
ORDER BY esal DESC;

+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 102 | Sonia    | ssingh    | New Delhi | 55000 |   75 |
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 113 | Vishnu   | Manchu    | Hyderabad | 20000 |   40 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
| 115 | Mohan    | Manchu    | Hyderabad |  NULL |   70 |
+-----+----------+-----------+-----------+-------+------+
-- 20. Write a query to show employee whose name's last third word is 'j' and salary is more then 30000. 

SELECT * from employee
where lname like "%j--"
and esal>30000;

-- 21. Write a query to show all employee who live in 'Bangalore' and 'Wayanad'.

SELECT *FROM employee
WHERE city IN ('Bangalore', 'Wayanad');
+-----+-------+--------+---------+-------+------+
| eid | fname | lname  | city    | esal  | age  |
+-----+-------+--------+---------+-------+------+
| 101 | Rahul | Gandhi | Wayanad | 45000 |   52 |
+-----+-------+--------+---------+-------+------+

-- 22. Write a query to fetch employee with first name count is 5.
select * from employee 
where length(fname)=5;


+-----+-------+-----------+-----------+-------+------+
| eid | fname | lname     | city      | esal  | age  |
+-----+-------+-----------+-----------+-------+------+
| 101 | Rahul | Gandhi    | Wayanad   | 45000 |   52 |
| 102 | Sonia | ssingh    | New Delhi | 55000 |   75 |
| 105 | Rajni | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay | Setupathi | Chennai   | 95000 |   47 |
| 110 | Sonam | Kapoor    | Mumbai    | 30000 |   27 |
| 114 | Manoj | Manchu    | Hyderabad | 12000 |   35 |
| 115 | Mohan | Manchu    | Hyderabad |  NULL |   70 |
+-----+-------+-----------+-----------+-------+------+

;
-- 26. Write a query to find employee with null salary.

select * from employee
where  esal IS NULL;

-- 27. Write a query to find employee whose cities are not null.


select * from employee
where  city IS NOT NULL;

-- 28. Write a query to delete data of employee whose id is 109.

delete from employee
where eid=109;


-- Write a query to group by employee with their age.

SELECT age,count(*) from employee
group by age;


+------+----------+
| age  | count(*) |
+------+----------+
|   52 |        1 |
|   75 |        1 |
|   45 |        1 |
|   69 |        1 |
|   65 |        1 |
|   47 |        1 |
|   40 |        3 |
|   31 |        1 |
|   27 |        1 |
|   78 |        1 |
|   35 |        1 |
|   70 |        1 |
+------+----------+



select city,count(*) as "no.of employees" from employee
GROUP BY city;

+-----------+-----------------+
| city      | no.of employees |
+-----------+-----------------+
| Wayanad   |               1 |
| New Delhi |               2 |
| Nodia     |               1 |
| Chennai   |               3 |
| Mumbai    |               4 |
| Hyderabad |               3 |
+-----------+-----------------+




