---------------------------------------JOINS-------------------------

--1.NATURAL JOINS

/*
type1:   only one common coloumn in both tables     
note: both same column names should have same data type
*/

select department_name,city from departments NATURAL JOIN locations;

/*
type 2 if two tables have more than one com col
*/

select  first_name,department_name from employees natural join departments;


-- natural join using on clause

select first_name,department_name from employees join departments
on (employees.manager_id=departments.manager_id 
and employees.department_id=departments.department_id);

--type 3
/*
if you want use only one com col we will use using clause*/

select first_name,department_name 
from employees join departments using (manager_id);

SELECT e.employee_id, e.last_name, e.department_id, 
d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
WHERE e.manager_id = 149 ;


select * from jobs;
select department_id from departments;
--employees;

SELECT e.last_name, e.department_id, d.department_name
FROM employees e LEFT OUTER JOIN departments d
ON (e.department_id = d.department_id) ;

SELECT e.last_name, e.department_id, d.department_name
FROM employees e RIGHT OUTER JOIN departments d
ON (e.department_id = d.department_id) ;

select * from locations;
select * from regions;


