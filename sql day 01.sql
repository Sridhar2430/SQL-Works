--To Create a Database

create database bench

--To Create a Table

create table sri
(

Id int PRIMARY KEY,   

Ename varchar(20) UNIQUE,

phone int,
)

--To Print The Values

select*from sri

--To Insert The Values Into The Tables

insert into sri values(1,'hero','7')

insert into sri values(2,'wanda','98')

insert into sri values(3,'flash','990')

--To Update a Record

update sri set id=10 where id=1

--Truncate The Table

TRUNCATE table sri

--To Drop a Table

drop table sri

--To Create Another

create table ee
(

Id int PRIMARY KEY,

Ename varchar(20) UNIQUE,

phone int default 1,
)

select*from ee

insert into ee values(1,'hero',1)

insert into ee values(2,'wanda',1)

insert into ee values(3,'flash',3)

insert into ee values(4,'flas',4)

--To Update a Particular Field In a Record

update ee set id=10 where id=1

delete from ee where id=1

alter table ee Modify id=Empid

alter table ee add Eage int

select*from sri

select*from ee
update ee set Eage = 65 where Id = 10

update ee set Eage=24 where id=2

update ee set Eage=43 where id=3

update ee set Eage=43 where id=4

update ee set id=1 where id =10

update ee set Id = 1 where Id = 3

select Id as EID, Ename as EmpName from ee

 select*from ee

insert into ee values(6,'chan',2,34)

insert into ee values(7,'bea',3,56)

select *from ee where Ename  Like 'f%' 

select *from ee where Ename  not Like '_a%' 

--Inserting a Value

insert into ee values(8,'Welcome',12,45)

select DISTINCT Eage from ee

select *from ee where Eage in( 1,45)

select *from ee where id>2

select Id as Eid from ee

select * from ee






