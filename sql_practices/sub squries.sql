select * from employees where commission_pct is null;
select rpad(last_name,8,'*') from employees;

SELECT last_name, salary
FROM employees
WHERE salary >
(SELECT salary
FROM employees
WHERE last_name = 'Ernst');

SELECT department_id, MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) >
(SELECT MIN(salary)
FROM employees
WHERE department_id = 50);

SELECT department_id, MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) >2100;

SELECT employee_id, last_name
FROM employees
WHERE salary in
(SELECT MIN(salary)
FROM employees
GROUP BY department_id);

----------------------------------------------------------------
/*
1. The HR department needs a query that prompts the user for an employee last name. The query 
then displays the last name and hire date of any employee in the same department as the 
employee whose name they supply (excluding that employee). For example, if the user enters 
Zlotkey, find all employees who work with Zlotkey (excluding Zlotkey)
*/

select last_name,hire_date from employees where department_id in
(select department_id from employees where last_name= '&last_name')
and last_name !='Zlotkey';

--select department_id from employees where last_name ='Zlotkey';
--select * from employees where department_id=80;
--select * from jobs;
--select * from employees;


/*
2. Create a report that displays the employee number, last name, and salary of all employees who 
earn more than the average salary. Sort the results in order of ascending salary
*/

select employee_id,last_name,salary from employees
where salary >any(select avg(salary) from employees) 
order by 3 ASC;

/*
3. Write a query that displays the employee number and last name of all employees who work in a 
department with any employee whose last name contains the letter “u.” Save your SQL 
statement as lab_07_03.sql. Run your query
*/

select employee_id,last_name from employees where department_id in
(select department_id from employees where last_name like '%u%');

--select employee_id,last_name from employees where job_id in
--(select job_id from employees where last_name like '%u%');

--select job_id,department_id from employees where last_name like '%u%';


/*
4. The HR department needs a report that displays the last name, department number, and job ID 
of all employees whose department location ID is 1700,Modify the query so that the user is prompted for a location ID
*/

select last_name,department_id,job_id from employees
where department_id in
(select department_id from departments where location_id =&location_id) order by 2 ;
--select * from employees;

/*
  5.      Create a report for HR that displays the last name and salary of every employee who reports to King.
*/

select last_name,salary from  employees where manager_id in (select employee_id from employees where last_name='King');
/*
6. Create a report for HR that displays the department number, last name, and job ID for every 
employee in the Executive department
*/

select * from departments;

select department_id,last_name,job_id from employees 
where department_id in 
(select department_id  from departments where department_name='Executive');

/*
If you have the time, complete the following exercise:
7. Modify the query in lab_07_03.sql to display the employee number, last name, and salary 
of all employees who earn more than the average salary, and who work in a department with 
any employee whose last name contains a “u.” Resave lab_07_03.sql as 
lab_07_07.sql. Run the statement in lab_07_07.sql
*/

select employee_id, last_name, salary
from employees
where salary > (select avg(salary) from employees) and
department_id in (select department_id from employees where last_name like '%u%');