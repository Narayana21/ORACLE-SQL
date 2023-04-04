set serveroutput on
declare
jb varchar2(20);
begin
select job_id into jb from employees;
dbms_output.put_line('The job_id is '||jb);
exception
when too_many_rows then
dbms_output.put_line('exact fetch returns more than requested number of rows');
end;

-------------------------------------------------------------------------------------------------------------------------------
set serveroutput on
declare 
h varchar2(2);
begin
select * into h from departments;
EXCEPTION
when others  then
dbms_output.put_line('NO data found');
end;
-------------------------------------------------------------------------------------------------------------------------------
set serveroutput on;
declare
jb varchar2(20);
a number(2):=20;
b number(2):=10;
c number(2);
begin
c:=a/b;
dbms_output.put_line('The  value of c is  '||c);
select job_id into jb from employees where employee_id=101;
dbms_output.put_line('The  job is '||jb);
exception
when zero_divide then
dbms_output.put_line('DIVIDE BY ZERO ERROR');
when too_many_rows then
dbms_output.put_line('WE are retreving multiple records/values of job');
end;
-------------------------------------------------------------------------------------------------------------------------------
set SERVEROUTPUT on
declare
jb varchar2(20);
begin
select job_id into jb from employees where employee_id=101;
dbms_output.put_line('The  job is '||jb);
exception
when too_many_rows then
dbms_output.put_line('WE are retreving multiple records/values of job');
end;
---------------------------------------------------------------------------------------------------------------
-- Raise Error
-- this error raised by the user
-- It is the process of giving our own name to handle error
set serveroutput on;
declare
a exception;
pragma exception_init(a,-20001);
jb varchar2(20);
begin
raise a;
select job_id into jb from employees where employee_id=10;
dbms_output.put_line('The data is present/avilable '||jb);
exception
when a then
dbms_output.put_line('The data is not present/avilable');
dbms_output.put_line(sqlerrm);
when no_data_found then
dbms_output.put_line('No data found');
end;

-------------------------------------------------------------------------------------------------------------------------------

-- Gives no data found error 

 declare
 a exception;
 b varchar2(10);
 begin
 select salary into b from employees where employee_id=10;
 dbms_output.put_line('DATA FOUND');
 raise a;
 exception
 when a then
 dbms_output.put_line('HELLO THERE');
-- when no_data_found then
-- dbms_output.put_line('N0 DATA FOUND');
 end;
 -------------------------------------------------------------------------------------------------------------------------------
set serveroutput on;
declare
jb varchar2(20);
begin
select job_id into jb  from employees where employee_id=10;
dbms_output.put_line('The data is  present/avilable '||jb);
if sql%found then
dbms_output.put_line('The data is  present/avilable '||jb);
raise_application_error(-20001,'The record is avialble ,  ApplicationError is raised');
end if;
exception
when others then
--dbms_output.put_line('The data is not present/avilable');
--dbms_output.put_line(sqlerrm);
raise_application_error(-20001,'The record is not avialble ,  Application Error is raised');
dbms_output.put_line(sqlerrm);
end;
