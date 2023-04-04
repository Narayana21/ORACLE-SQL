create table customers(emp_id int,name varchar2(20),age number(2),salary number(10));
select * from customers;

insert into customers values(109,'Christopher',30,31500);
commit;
----------------------------------------------------------------------------------------------------------
set serveroutput on
declare
s SYS_REFCURSOR;
c_rec customers%rowtype;
begin
open s for select * from customers;
loop
fetch s into c_rec;
exit when s%notfound;
dbms_output.put_line(c_rec .emp_id||'     '||c_rec.name||'      '||c_rec.age||'   '||c_rec.salary);
end loop;
close s;
end;
----------------------------------------------------------------------------------------------------------
set serveroutput on
declare
cursor s is select * from customers;
c_rec customers%rowtype;
begin
open s;
loop
fetch s into c_rec;
exit when s%notfound;
dbms_output.put_line(c_rec.emp_id||'   '||c_rec.name||'  '||c_rec.age||'   '||c_rec.salary);
end loop;
close s;
end;
------------------------------------------------------------------------------------------------------------
set serveroutput on
declare 
cursor s is select emp_id,name,age,salary from customers;
eid customers.emp_id%type;
ename customers.name%type;
ag customers.age%type;
sal customers.salary%type;
begin
open s;
loop
fetch s into eid,ename,ag,sal;
exit when s%notfound;
dbms_output.put_line(eid||'    '||ename||'   '||ag||'    '||sal);
end loop;
close s;
end;
-------------------------------------------------------------------------------------------------------------
set serveroutput on;
declare 
cursor c1 is select * from customers for update of salary nowait;
begin
for i in c1
loop
update customers set salary=salary+1000 where current of c1;
dbms_output.put_line('The record values are '||'   '||i.emp_id||'  '||i.salary);
end loop;
end;
---------------------------------------------------------------------------------------------------------------



