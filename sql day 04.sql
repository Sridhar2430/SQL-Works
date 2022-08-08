use students

CREATE TABLE Worker1 (
	
	WORKER_ID VARCHAR(10) NOT NULL PRIMARY KEY,
	
	FIRST_NAME CHAR(25),
	
	LAST_NAME CHAR(25),
	
	SALARY int,
	
	JOINING_DATE DATETIME,
	
	DEPARTMENT CHAR(25)
)

INSERT INTO Worker1 VALUES(001, 'Monika', 'Arora', 100000, '06-08-2022 12:10:24', 'HR')

INSERT INTO Worker1 VALUES(002, 'Niharika', 'Verma', 80000, '06-08-2022 12:10:24', 'Admin')

INSERT INTO Worker1 VALUES(003, 'Vishal', 'Singhal', 300000, '06-08-2022 12:10:24', 'HR')

INSERT INTO Worker1 VALUES(004, 'Amitabh', 'Singh', 500000, '06-08-2022 12:10:24', 'Admin')

INSERT INTO Worker1 VALUES(005, 'Vivek', 'Bhati', 500000, '06-08-2022 12:10:24', 'Admin')

INSERT INTO Worker1 VALUES(006, 'Vipul', 'Diwan', 200000, '06-08-2022 12:10:24', 'Account')

INSERT INTO Worker1 VALUES(007, 'Satish', 'Kumar', 75000, '06-08-2022 12:10:24', 'Account')

INSERT INTO Worker1 VALUES(008, 'Geetika', 'Chauhan', 90000, '06-08-2022 12:10:24', 'Admin')

select * from Worker1

select avg(SALARY) as 'Average Salary' from Worker1

select min(SALARY) as 'Minimum Salary' from Worker1

select max(SALARY) as 'Maximum Salary' from Worker1

select count(SALARY) as 'Count Salary' from Worker1

select sum(SALARY) as 'Sum Salary' from Worker1

select * from Worker1

select avg(SALARY) as 'Average Salary',DEPARTMENT from Worker1 group by DEPARTMENT

select avg(SALARY) as 'Average Salary',DEPARTMENT from Worker1 group by DEPARTMENT having DEPARTMENT='Account'

select * from Worker1 order by SALARY

select * from Worker1 order by SALARY desc

select * from Worker1

select * from Worker1 order by SALARY desc,WORKER_ID desc

create table GRADUATES

(

StID int primary key ,

SName varchar(25) not null,

SDept int not null,

SClub int not null,

)
insert into GRADUATES values( 1 , 'tai', 1 , 23)

insert into GRADUATES values( 2 , 'hai', 2 , 22)

insert into GRADUATES values( 3 , 'kai', 1 , 23)

insert into GRADUATES values( 4 , 'pai', 2 , 22)

create table GDept

(

DID int primary key,

DeptName varchar(25) not null

)

insert into GDept values(1,'bca')

insert into GDept values(2,'mca')

create table GClub

(

CID int primary key,

ClubName varchar(25) not null

)
insert into GClub values(22,'night')

insert into GClub values(23,'day')

select * from GRADUATES

select * from GDept

select StID,SName,SDept,DeptName from GRADUATES inner join GDept on SDept=DID

select GRADUATES.StID,GRADUATES.SName,GRADUATES.SDept,GDept.DeptName from GRADUATES inner join GDept on GRADUATES.SDept=GDept.DID

select * from GDept

select s.StID,s.SName,s.SClub,s.SDept,d.DeptName from GRADUATES as s inner join GDept as d on s.SDept=d.DID

select * from GClub

select s.StID,s.SName,s.SDept,d.DeptName,c.ClubName,s.SClub from GRADUATES as s inner join GDept as d on s.SDept=d.DID inner join GClub as c on s.SClub=c.CID

select s.StID,s.SName,s.SClub,s.SDept,d.DeptName from GRADUATES as s inner join GDept as d on s.SDept=d.DID

select s.StID,s.SName,s.SClub,s.SDept,d.DeptName from GRADUATES as s left join GDept as d on s.SDept=d.DID

select s.StID,s.SName,s.SClub,s.SDept,d.DeptName from GRADUATES as s right join GDept as d on s.SDept=d.DID

select s.StID,s.SName,s.SClub,s.SDept,d.DeptName from GRADUATES as s full join GDept as d on s.SDept=d.DID

select s.StID,s.SName,s.SDept,d.DeptName,c.ClubName,s.SClub from GRADUATES as s left join GDept as d on s.SDept=d.DID full join GClub as c on s.SClub=c.CID

create table sample
(
id int primary key IDENTITY(1,1),

name varchar(20)

)

insert into sample values('Sam')

select * from sample

create sequence stpid as INT start with 1 increment by 5

create table sample1

(

id int primary key ,

name varchar(20)

)

insert into sample1 values(NEXT VALUE FOR stPID,'Peter')

select * from sample1

insert into sample1 values(NEXT VALUE FOR stPID,'Paul')

insert into sample1 values(NEXT VALUE FOR stPID,'John')

alter sequence stpid restart with 1 increment by 1

create table sample2

(

id int primary key ,

name varchar(20)

)

insert into sample2 values(NEXT VALUE FOR stPID,'Peter')

select * from sample2

insert into sample2 values(NEXT VALUE FOR stPID,'Paul')

insert into sample2 values(NEXT VALUE FOR stPID,'John')

select NEXT VALUE FOR stPID

select * from GRADUATES

create view sports 

as 

select * from GRADUATES where SClub=200

select * from sports

create view GRADUATES_Dept

as

select s.StID,s.SName,s.SClub,s.SDept,d.DeptName from GRADUATES as s inner join GDept as d on s.SDept=d.DID

select * from GRADUATES_Dept

