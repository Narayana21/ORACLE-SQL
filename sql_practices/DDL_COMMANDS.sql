 --DDL STATEMENTS
  ---------------
--CREATE
--ALTER
--RENAME
--TRUNCATE
--DROP

create table students(rno int,name varchar2(20),age int,marks decimal(2,2));

select * from students;
describe students;

------------------------------------------------------------------------------------------------------------
alter table students add gender char(1);
alter table students rename column gender to sex;
alter table students modify sex varchar2(6);
alter table students drop column sex;
alter table students rename to students;
alter table students rename column sex to gender;
---------------------------------------------------------------------------------------------------------------
rename students to sample_table;
rename sample_table to students;

----------------------------------------------------------------------------------------------------------------
-- TRUNCATE DDL COMMAND

-- TRUNCATE IS USED TO DELETE ALL ROWS FROM A TABLE AT A TIME
-- IT IS USED FOR DELETING ROWS BUT NOT COLUMNS
-- ROWS ARE DELETED PERMANENTLY
-- CANNOT DELETE A SPECIFIC ROW FROM A TABLE
-- NOT SUPPORTS THE WHERE CLAUSE
-- IT DELETE ROWS BUT NOT STRUCTURE OF TABLE

-- TRUNCATE TABLE STUDENTS;

-----------------------------------------------------------------

-- DROP DDL COMMAND 
-- IF YOU WANT TO DELETE THE TABLE (ROWS AND COLUMNS) FROM THE DATABASE
--THEN YOU NEED TO USE THE DDROP DDL COMMAND IN SQL
-- DROP TABLE STUDENTS;