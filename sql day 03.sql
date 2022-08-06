CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;


CREATE TABLE Worker (
	WORKER_ID VARCHAR(10) NOT NULL PRIMARY KEY,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY VARCHAR(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
)

select * from Worker

INSERT INTO Worker VALUES(001, 'Monika', 'Arora', 100000, '06-08-2022 12:10:24', 'HR')
INSERT INTO Worker VALUES(002, 'Niharika', 'Verma', 80000, '06-08-2022 12:10:24', 'Admin')
INSERT INTO Worker VALUES(003, 'Vishal', 'Singhal', 300000, '06-08-2022 12:10:24', 'HR')
INSERT INTO Worker VALUES(004, 'Amitabh', 'Singh', 500000, '06-08-2022 12:10:24', 'Admin')
INSERT INTO Worker VALUES(005, 'Vivek', 'Bhati', 500000, '06-08-2022 12:10:24', 'Admin')
INSERT INTO Worker VALUES(006, 'Vipul', 'Diwan', 200000, '06-08-2022 12:10:24', 'Account')
INSERT INTO Worker VALUES(007, 'Satish', 'Kumar', 75000, '06-08-2022 12:10:24', 'Account')
INSERT INTO Worker VALUES(008, 'Geetika', 'Chauhan', 90000, '06-08-2022 12:10:24', 'Admin')


select* from Worker

--Q(1) Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.

Select FIRST_NAME AS WORKER_NAME from Worker;

select * from Worker

--(Q2) Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.

select UPPER(FIRST_NAME) from worker;

select * from Worker

--(Q3) Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

select DISTINCT DEPARTMENT from Worker

select * from Worker

--(Q4) Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

SELECT SUBSTRING(FIRST_NAME,1,3) AS FIRSTTHREECHAR from Worker

select *from Worker

--(Q5) Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

SELECT DISTINCT LEN(DEPARTMENT) FROM worker;

--(Q6)Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.

select FIRST_NAME +' '+LAST_NAME AS COMPLETE_NAME from Worker

--(Q7) Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.

select * from Worker where FIRST_NAME in ('Vipul','satish')

--(Q8) Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.

select * from Worker where DEPARTMENT in ('Admin')

--(Q9) Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.

select * from Worker where FIRST_NAME like '%a'

--(Q10) Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.

select * from Worker where FIRST_NAME like '%a%'

--Task Completed