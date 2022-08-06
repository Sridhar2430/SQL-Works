--Creating a Database

create database students

--Creating a Table

create table boyz(

--Lets Initialize Records With Primary Key

Stid Int primary key,

--Using The Not Null

Stname varchar(20) unique not null,

StDesignation varchar(20) default 'representative',

Stphone int not null,

Ststipend int not null
)
insert into boyz values(1,'sridhar','team lead','99887766','15999')

insert into boyz values(2,'fahim','team organizer','99654433','11888')

insert into boyz values(3,'sudhersan','team support','76558899','8999')

insert into boyz values(4,'sravanan','team booster','87009933','8999')

select * from boyz

alter table boyz add teamid int

alter table boyz drop column branchid

 update boyz  set teamid = 10 where  Stid =1
 
 update boyz  set teamid = 20 where  Stid =2
 
 update boyz  set teamid = 30 where  Stid =3
 
 update boyz  set teamid = 40 where  Stid =4

 select * from boyz
 
 --To Create Another Table

  create table bzgroup(
 
 groupid int not null,
 
 place varchar(25),
 
 Stsr int FOREIGN KEY References boyz(Stid)
 
 )

  select * from bzgroup

  -- To Insert Records into it
 
 insert into bzgroup values(1,'HMS',1)
 
 insert into bzgroup values(2,'BMS',2)

 insert into bzgroup values(3,'CMS',3)
 
 insert into bzgroup values(4,'DMS',4)

 select * from bzgroup

 --To Select a Particular Record
 
 select Stsr from bzgroup
 
 --To Delete It
 
 delete  from bzgroup where Stsr = 3

 --Create Another Table

 Create table checking(
 
 Tid int Primary key,
 
 Pno varchar(25) unique,
 
 )
 
 --Insert Values Into the Table

 insert into checking values(111,'T10')
 
 insert into checking values(222,'T20')
 
 insert into checking values(333,'T30')
 
 insert into checking values(444,'T40')

 

 select *from checking

 --Creating Another Table
 
 create table testing(
 
 Tsid int Primary key,
 
 Tsrname varchar(20) unique,
 
 Tsno int FOREIGN KEY References checking(Tid) on delete cascade on update cascade
 
 )

 select * from testing

insert into testing values(1,'T101',111)

insert into testing values(2,'T222',222)

insert into testing values(3,'T333',333)

insert into testing values(4,'T444',444)

--Creating a Table Named project

Create table project(
 
 p int Primary key,
 
 pscope varchar(20) unique,
 )

 select * from project

 insert into project values(1,'p1')
 
 insert into project values(2,'p2')
 
 insert into project values(3,'p3')
 
 insert into project values(4,'p4')
 
 insert into project values(5,'p5')
 
 insert into project values(6,'p6')

 select * from project

 --Creating Another Table

  create table process(
 
 prno int Primary key,
 
 prname varchar(20) unique,
 
 prsr int FOREIGN KEY References project(p) on delete set default on update set default
 )
insert into process values(1001,'pr1',1)

insert into process values(1002,'pr2',2)

insert into process values(1003,'pr3',3)

insert into process values(1004,'pr4',4)

insert into process values(1005,'pr5',3)

insert into process values(1006,'pr6',4)

select * from process