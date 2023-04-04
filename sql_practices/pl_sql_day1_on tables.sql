/* PL_SQL QURIES ON TABLE DATA*/
declare 
fn varchar2(20);
begin 
select first_name into fn from employees where employee_id=101;
dbms_output.put_line('The employee name is '||fn);

exception

when no_data_found then
dbms_output.put_line('The employee name '||fn||'does not exists');
end;


declare 

r employees%rowtype;  --// declaring row type variable 'r' holds total record
c employees.first_name%type;  --//  declaring col type variable  'c' holds only one col

begin 
select  *  into r  from employees where employee_id=100;
select first_name  into c from employees where employee_id=101;

dbms_output.put_line(' the row values are'||r.employee_id||'  '||r.first_name||'   '||r.salary||'   '||r.department_id);
dbms_output.put_line('the coloum is'||c);
end;
