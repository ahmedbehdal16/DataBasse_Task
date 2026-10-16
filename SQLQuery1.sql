Use Full_Stack

Create table emp
(
eid int Primary Key,
ename varchar(20) not null,
eage int,
edd varchar(20) default 'cairo',
hiredate date default getdate(),
Dnum int

)
--DDL

alter table emp add sal int

alter table emp alter column sal bigint

alter table emp drop column sal

drop table emp

----------------------------
--DML
--INSERT UPDATE DELETE

insert into emp
values(1, 'ali', Null, 'alex', 1/1/2010, Null)

insert into emp(ename,eid)
values('farah',2)

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

SELECT
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME IN ('Employee', 'Project', 'Work', 'emp')
ORDER BY TABLE_NAME, ORDINAL_POSITION;