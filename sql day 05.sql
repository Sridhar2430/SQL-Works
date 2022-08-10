use boss

select * from employee

select * from employee where WORKER_ID=4

select * from employee_sal

create clustered index ix_WORKER_ID on employee_SAL(WORKER_ID)

create unique index ix_EPM_NAME on employee(EMP_NAME)

select * from employee where EMP_NAME='BOSS4'

create index ix_EMP_NAME on employee(EMP_NAME) where EMP_NAME='BOSS4'

create trigger trg_insert

on employee

FOR INSERT

as

begin

		print 'You cannot insert data'

		rollback transaction

end

select * from employee

insert into employee values(7,'BOSS7')

disable trigger trg_insert on employee

enable trigger trg_insert on employee

insert into employee values(8,'BOSS8')

create trigger trg_dml

on employee_sal

FOR INSERT,UPDATE,DELETE

as


begin

		print 'You cannot perform DML Operations'

		rollback transaction

end

select * from employee_sal

insert into employee_sal values(2,17000)

update employee_sal set EMP_SAL=17000 where EMP_SAL=18000

delete from employee_sal where EMP_SAL=16000 

create trigger trg_inserted
on employee
for insert
as
begin
	select * from inserted
end

insert into employee values(8,'BOSS8')

select * from employee


create trigger trg_deleted

on employee

for delete

as 

begin 

	select * from deleted -- trigger table

end

delete from employee where EMP_NAME='BOSS7'

create trigger trg_update

on employee

for update

as

begin

	select * from inserted

		select * from deleted
end

update employee set EMP_NAME='BOSS9' where EMP_NAME='BOSS8'

create trigger trg_ddl

on database

for CREATE_TABLE,ALTER_TABLE,DROP_TABLE

as

	begin

		print'You cannot perform DDL operations on boss database'

		rollback transaction

	end

disable trigger trg_ddl on database

use freshers

select * from july

create trigger trg_ddlserver

on ALL SERVER

for CREATE_TABLE,ALTER_TABLE,DROP_TABLE

as

	begin

		print'You cannot perform DDL operations on server '

		rollback transaction

	end

disable trigger trg_ddlserver on ALL SERVER

select * from employee

BEGIN TRANSACTION
	
	insert into employee values(11,'BOSS11')
	
	SAVE TRANSACTION insert_stmt
	
	delete from employee where WORKER_ID=8

ROLLBACK TRANSACTION insert_stmt

COMMIT TRANSACTION

