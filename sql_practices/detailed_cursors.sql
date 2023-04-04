-- EXPLICT CURSOR MODEL -1

set serveroutput on;
declare
s sys_refcursor;
emp_rec emp%rowtype;
begin
open s for select * from emp;
loop
fetch s into emp_rec;
exit when s%notfound;
dbms_output.put_line(emp_rec.empno||'     '||emp_rec.ename||'      '||emp_rec.sal);
end loop;
close s;
end;
--------------------------------------------------------------------------------------------------------
-- EXPLICT CURSOR MODEL -2

set serveroutput on;
declare
s sys_refcursor;
eno emp.empno%type;
en emp.ename%type; 
sa  emp.sal%type;
begin
open s for select empno,ename,sal from emp;
loop
fetch s into eno,en,sa;
exit when s%notfound;
dbms_output.put_line(eno||'     '||en||'      '||sa);
end loop;
close s;
end;
---------------------------------------------------------------------------------------------------------
--IMPLICT CURSOR MODEL-1

set serveroutput on;
declare
cursor s is select empno,ename,sal from emp;
eno emp.empno%type;
en emp.ename%type;
sa  emp.sal%type;
begin
open s;
loop
fetch s into eno,en,sa;
exit when s%notfound;
dbms_output.put_line(eno||'     '||en||'      '||sa);
end loop;
close s;
end;
-------------------------------------------------------------------------------------------

-- IMPLICT CURSOR MODLE-2
set serveroutput on
declare
cursor s is select * from emp;
emp_rec emp%rowtype;
begin
open s;
loop
fetch s into emp_rec;
exit when s%notfound;
dbms_output.put_line(emp_rec.empno||'     '||emp_rec.ename||'      '||emp_rec.sal);
end loop;
close s;
end;
------------------------------------------------------------------------------------------------------


