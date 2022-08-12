--What are the differences between local and global temporary tables?

The difference between the local table and the global table is the local table gets stored in a particular database
and can be accessed by that database only,but the global table is stored in the server and can be able to accessed
by all database in that server.

--What is CHECK constraint?

The check constraint is special feature that is available in the SQL where it is used to check the given condition
is true or false by using the check function.

--What is a Trigger?

The trigger is a tool in which its concept is that a triger is like a condition where a trigger is created for a 
particular action , whenever we try to perform that action we will be warned by a print statement and the process
will get terminated and will be rolled back.

--What is an IDENTITY column in insert statements?

The identity column is the column in wich that particular column is used as a reference column or like a similar 
column for the given condition.

--What is the difference between COMMIT and ROLLBACK?

The difference between the COMMIT and ROLLBACK is that the COMMIT statement commits the given condition into the table,
 but the ROLLBACK makes the inserted cndition gets terminated and gets deleted.

 --What is Filtered Index?

 The filtered index is a kind of index where the given index is declared with a particular specific kind of a condition
 in it that has been already declared.

 --What is a JOIN, and mention its Types?

 Join is a fuction that is available on the SQL thats helps us to perform a specific join function in our desired way.
 The types of joins are 
 *). INNER JOIN
 *). OUTER JOIN
 *). LEFT JOIN
 *). RIGHT JOIN

 --How can you relate a Foreign Key and a Primary Key?

 We can relate a foreign key as a key that is derived from the primary key and it has the references of that primary key.

 --What is the difference between Stored Procedures and Functions?

 The difference between the stored procedures an the functions is the stored procedures are the ones which are already 
 created by the SQL server by itself and the functions are the one those which are created by the user(developer).

 --What do you mean by Clustered Indexes?

 The clustered index are the index which is created by default whenever we declare a primary key.






 CREATE DATABASE ORGNEW;
SHOW DATABASES;
USE ORGNEW;

CREATE TABLE Worker (
	WORKER_ID VARCHAR(10) NOT NULL PRIMARY KEY,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);
drop table worker

CREATE TABLE Worker (
	WORKER_ID VARCHAR(10) NOT NULL PRIMARY KEY,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY int,
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
)
select * from worker

INSERT INTO Worker VALUES(001, 'Monika', 'Arora', 100000, '06-08-2022 12:10:24', 'HR')
INSERT INTO Worker VALUES(002, 'Niharika', 'Verma', 80000, '06-08-2022 12:10:24', 'Admin')
INSERT INTO Worker VALUES(003, 'Vishal', 'Singhal', 300000, '06-08-2022 12:10:24', 'HR')
INSERT INTO Worker VALUES(004, 'Amitabh', 'Singh', 500000, '06-08-2022 12:10:24', 'Admin')
INSERT INTO Worker VALUES(005, 'Vivek', 'Bhati', 500000, '06-08-2022 12:10:24', 'Admin')
INSERT INTO Worker VALUES(006, 'Vipul', 'Diwan', 200000, '06-08-2022 12:10:24', 'Account')
INSERT INTO Worker VALUES(007, 'Satish', 'Kumar', 75000, '06-08-2022 12:10:24', 'Account')
INSERT INTO Worker VALUES(008, 'Geetika', 'Chauhan', 90000, '06-08-2022 12:10:24', 'Admin')

select * from worker

--Write an SQL query to clone a new table from another table.

select * into workclone from worker

select * from workclone

--Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.

select FIRST_NAME +' '+LAST_NAME AS COMPLETE_NAME from Worker

--Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.

select * from worker order by FIRST_NAME

--Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000

select * from worker where salary between 100000 and 500000 

--Write an SQL query to fetch the no. of workers for each department in the descending order.

select * from worker order by department desc

--Create a DML trigger for update on table ‘Title’

create trigger trg_update
on Title
FOR UPDATE
as
begin
	print 'You cannot update data'
	rollback transaction --undo the update query
end

--Create an explicit transaction to commit insert statements and rollback delete statements in ‘Worker’ table

select * from worker

BEGIN TRANSACTION
	insert into worker values(009,'Liam','Lely', '06-08-2022 12:10:24', 'ADMIN')
	SAVE TRANSACTION insert_stmt
	delete from worker where WORKER_ID=8
ROLLBACK TRANSACTION insert_stmt
COMMIT TRANSACTION

--Create a Function to Calculate Simple Interest

create function dbo.SimpleInterest(@amount DECIMAL(18,2) = 0.0, 
								   @InterestRate DECIMAL(18,2) = 0.0, 
								   @InterestTimeinYears DECIMAL(18,2) = 0.0)
returns int
as
begin
    return (@amount * @InterestRate * @InterestTimeinYears / 100)
end
go

select dbo.SimpleInterest(14000,7.5,4) TotalInterest

CREATE TABLE Bonus (
	WORKER_REF_ID VARCHAR(10),
	BONUS_AMOUNT INT,
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus VALUES(001, 5000, '16-02-2022')
		(002, 3000, '16-06-2022')
		(003, 4000, '16-02-2022')
		(001, 4500, '16-02-2022')
		(002, 3500, '16-06-2022')
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');












