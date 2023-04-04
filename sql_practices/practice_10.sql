create table students_data(rollno varchar2(10) primary key,sname varchar2(20) not null,email varchar2(20)unique,dob date,address varchar2(10),phno number(10) check(length(phno)=10));

insert into students_data values('20K61A0497','NARAYANA','HI497@SASI.AC.IN','08-DEC-2022','NJL',9398323517);

select * from students_data;


-- practice 10
-- 1 creating a table named dept and giving column level constraint

create  table dept( id number(7)  constraint pk_id primary key,name varchar2(25));
desc dept;
--drop table dept;

--2.Populate the DEPT table with data from the DEPARTMENTS table. Include only columns that 
--you need
insert into dept select department_id,department_name from departments ;
select * from dept;

--3 Create the EMP table based on the following table instance chart. Save the statement in
--a script called lab_10_03.sql, and then execute the statement in the script to create the 
--table. Confirm that the table is created.

create table emp(id number(7),last_name varchar2(25),first_name varchar2(25),dept_id number(7),
constraint fk_id foreign key(dept_id) references dept(id));
select * from emp;

create table employees2(ID number(10),FIRST_NAME varchar2(20),LAST_NAME varchar2(20)DEPT_ID number;


