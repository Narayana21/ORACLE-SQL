create  table narayana(SERIAL NUMBER(1),NAME VARCHAR2(10),AGE NUMBER(3),SALARY NUMBER(10));


INSERT INTO NARAYANA VALUES(1,'abdul',10,6777);
INSERT INTO NARAYANA VALUES(2,'tulasi',40,77777);
INSERT INTO NARAYANA VALUES(3,'ramesh',59,6877);
INSERT INTO NARAYANA VALUES(4,'phani',40,6797);
INSERT INTO NARAYANA VALUES(5,'sidhhu',20,6477);
INSERT INTO NARAYANA VALUES(6,'anitha',18,6277);

select * from narayana;\
set serveroutput on
declare
totalrows number;
begin
select count(*) into totalrows from employees;
if sql%notfound then
dbms_output.put_line('not present');
elsif sql%found then
dbms_output.put_line(totalrows||' present');
end if;
end;

set serveroutput on
declare
 cursor emp_cursor is
 select employee_id,last_name from employees
 where department_id=30;
begin 
 for emp_record on emp_cursor
 loop
 dbms_output.put_line(emp_record.employee_id||'     '||emp_record.last_name);
 end loop;
 end;
 
 


