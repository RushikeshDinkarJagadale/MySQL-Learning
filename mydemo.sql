create database mydemo;

use mydemo;

show databases;

CREATE TABLE dataofcustomer
	(
		custid VARCHAR(6) PRIMARY KEY,
        fname varchar(50),
        mname VARCHAR(30),
        lname VARCHAR(30),
        city VARCHAR(15),
        age int(10),
        mobileno VARCHAR(10),
        occupation VARCHAR(10),
        dob DATE
	);
    
	show tables;
INSERT INTO dataofcustomer VALUES('C00001','Ramesh','Chandra','Sharma','Delhi',45,'9543198345','Service','1976-12-06');
INSERT INTO dataofcustomer VALUES('C00002','Avinash','Sunder','Minha','Delhi',32,'9876532109','Service','1974-10-16');
INSERT INTO dataofcustomer VALUES('C00003','Rahul',null,'Rastogi','Delhi',24,'9765178901','Student','1981-09-26');
INSERT INTO dataofcustomer VALUES('C00004','Parul',null,'Gandhi','Delhi',46,'9876532109','Housewife','1976-11-09');
INSERT INTO dataofcustomer VALUES('C00005','Naveen','Chandra','Aedhekar','Mumbai',23,'8976523190','Service','1976-09-19');
INSERT INTO dataofcustomer VALUES('C00006','Chaitresh',null,'Barve','Mumbai',18,'7651298321','Student','1992-11-06');
INSERT INTO dataofcustomer VALUES('C00007','Amit','Kumar','Borkar','Mumbai',76,'9875189761','Student','1981-09-06');
INSERT INTO dataofcustomer VALUES('C00008','Nisha',null,'Dalle','Mumbai',43,'7954198761','Service','1975-12-03');
INSERT INTO dataofcustomer VALUES('C00009','Abhishekh',null,'Datta','Kolakatta',67,'9856198761','Service','1973-05-22');
INSERT INTO dataofcustomer VALUES('C00010','Shankar',null,'Nair','Chennai',90,'8765489076','Service','1976-07-12');

select * from dataofcustomer;

UPDATE dataofcustomer
SET fname = 'Rushi', age = 22
WHERE custid = 'C00001';

DELETE FROM dataofcustomer
WHERE custid = 'C00009';



show tables;

select * from dataofcustomer; 

select min(age) from dataofcustomer;
select fname from dataofcustomer where age - 18;

select max(age) as maxage from dataofcustomer;
select fname from dataofcustomer where age - 90;

select count(age) as total_customer from dataofcustomer;

select count(*) from dataofcustomer;

select avg(age) as average_age from dataofcustomer;
select sum(age) as sum_of_age from dataofcustomer;

select count(fname),city from dataofcustomer group by city;

CREATE TABLE customer;
	(
		custid VARCHAR(6),
		fname VARCHAR(30),
		mname VARCHAR(30),
		lname VARCHAR(30),
		city VARCHAR(15),
		mobileno VARCHAR(10),
		occupation VARCHAR(10),
		dob DATE,
		CONSTRAINT customer_custid_pk PRIMARY KEY(custid)
    );
    
INSERT INTO customer VALUES('C00001','Ramesh','Chandra','Sharma','Delhi',45,'9543198345','Service','1976-12-06');
INSERT INTO customer VALUES('C00002','Avinash','Sunder','Minha','Delhi',32,'9876532109','Service','1974-10-16');
INSERT INTO customer VALUES('C00003','Rahul',null,'Rastogi','Delhi',24,'9765178901','Student','1981-09-26');
INSERT INTO customer VALUES('C00004','Parul',null,'Gandhi','Delhi',46,'9876532109','Housewife','1976-11-09');
INSERT INTO customer VALUES('C00005','Naveen','Chandra','Aedhekar','Mumbai',23,'8976523190','Service','1976-09-19');
INSERT INTO customer VALUES('C00006','Chaitresh',null,'Barve','Mumbai',18,'7651298321','Student','1992-11-06');
INSERT INTO customer VALUES('C00007','Amit','Kumar','Borkar','Mumbai',76,'9875189761','Student','1981-09-06');
INSERT INTO customer VALUES('C00008','Nisha',null,'Dalle','Mumbai',43,'7954198761','Service','1975-12-03');
INSERT INTO customer VALUES('C00009','Abhishekh',null,'Datta','Kolakatta',67,'9856198761','Service','1973-05-22');
INSERT INTO customer VALUES('C00010','Shankar',null,'Nair','Chennai',90,'8765489076','Service','1976-07-12');
    
    DESC dataofcustomer;
    
