create table data(regd varchar2(15) constraint nn_regd not null,last_name varchar2(20) constraint pk_name primary key);


CREATE VIEW val50
AS SELECT employee_id ID_NUMBER, last_name NAME,
salary*12 ANN_SALARY
FROM employees
WHERE employee_id = 120;

describe salvu50; 

select * from val 50;