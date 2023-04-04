create or replace trigger display_sal_changes
before delete or insert or update on emp
for each row
declare
sal_dif number(5);
begin
sal_dif:= :new.sal - :old.sal;
    dbms_output.put_line('Old salary:'||:OLD.sal);
    dbms_output.put_line('NEW salary:'||:NEW.sal);
    dbms_output.put_line('salary difference: '|| sal_dif);
END;
set serveroutput on;
update emp set sal=1500 where empno=7902;

----------------------------------------------------------------------------------------------------
select * from students;
---------------------------------------------------------------------
create or replace trigger age_update before insert or update or delete 
on students for each row
declare
begin
if :new.age>30 then
dbms_output.put_line('sorry miss your age is big '||:new.age);
else
dbms_output.put_line('Hey beautiful welcome');
end if;
end;

set SERVEROUTPUT on;
update students set age=31 where rno=6;
set SERVEROUTPUT on;
insert into students(rno,name,age,gender) values(12,'Kajal',40,'FEMALE');