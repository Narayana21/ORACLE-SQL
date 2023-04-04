select * from departments;

select last_name, salary,salary-300 head
from employees;

SELECT last_name||commission_pct AS "Employees"
FROM employees;

SELECT department_name || ' Department' || 
q'('s  Manager Id:)' 
|| manager_id 
AS "Department and Manager" 
FROM departments;

describe employees;
select last_name||','||job_id "Employee and Title"
from employees;

select last_name,department_id from employees where department_id=90;

SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 2500 AND 3500 ;

SELECT employee_id, last_name, job_id, salary
FROM employees
where job_id LIKE 'SA_MAN%' ;

SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY 1;

SELECT last_name, department_id, salary
FROM employees
ORDER BY department_id, salary DESC;

SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &num ;

select * from employees;
SELECT employee_id, last_name, job_id,&column_name
FROM employees
WHERE &condition
ORDER BY &order_column ;

SELECT employee_id, last_name, job_id, &&column_name
FROM employees
ORDER BY &x;

select last_name "Employee" , salary "Monthly Salary" 
from employees
where salary between 5000 and 12000 and
department_id in(20,50);

select last_name, hire_date
from employees order by 2; 

select last_name from employees where employee_id=102; --last_name like '%n';

SELECT employee_id, CONCAT(first_name, last_name) NAME,
LENGTH (last_name), INSTR(last_name, 'a') "Contains 'a'?"
FROM employees
WHERE SUBSTR(last_name, -1, 1) = 'n';

SELECT ROUND(45.92356788,4), ROUND(45.92345567675494,5),
ROUND(68.92356473956749,-1)
FROM DUAL;

SELECT round(45.923923,3), TRUNC(45.923923,3),
TRUNC(45.99),round(45.5)
FROM DUAL;