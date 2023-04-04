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

------------------------------------------------------
set serveroutput on
declare
cursor c1 is select last_name,salary from employees;
ename employees.last_name%type;
sal employees.salary%type;
begin
open c1;
loop
fetch c1 into ename,sal;
exit when c1%notfound;
dbms_output.put_line(ename||'  '||sal);
end loop;
close c1;
end;
---------------------------------------------
select * from students;


