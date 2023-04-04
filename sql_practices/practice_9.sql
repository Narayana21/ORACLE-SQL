-- creating a table with my_employees
create table  my_employees(id number(4), last_name varchar2(25),first_name varchar(25),userid varchar(8),salary number(9,2));
drop table my_employee;
--Describe the structure of the MY_EMPLOYEE table to identify the column names.
describe my_employees;

-- inserting values into rows
insert into my_employees values(1,'Patel','Ralph','rpatel',895);
insert into my_employees values(2,'Dancs','Betty','bdancs',860);
insert into my_employees values(3,'Biri','Ben','bbiri',1100);
insert into my_employees values(4,'Newman','Chad','cnewman',750);
insert into my_employees values(5,'Ropeburn','Audrey','aropebur',1550);
select * from my_employees;

--

--insert into my_employees values(&id,'&lname',