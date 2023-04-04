PRACTICE 1


--practice 1


--1. The following SELECT statement executes successfully:
SELECT last_name, job_id, salary AS Sal
FROM employees;

-- 3. There are four coding errors in the following statement. Can you identify them?

SELECT employee_id, last_name,
salary * 12 "ANNUAL SALARY"
FROM employees;

--  4.Your first task is to determine the structure of the DEPARTMENTS table and its contents

desc departments;

--  5.Your first task is to determine the structure of the DEPARTMENTS table and its contents


describe employees;

--6.  The HR department wants a query to display the last name, job code, hire date, and employee 
--   number for each employee, with the employee number appearing first. Provide an alias 
--  STARTDATE for the HIRE_DATE column

select last_name,job_id,hire_date "STARTDATE", employee_id from employees;

--  7. The HR department wants a query to display all unique job codes from the EMPLOYEES table

select  distinct job_id from employees;

select * from employees;

--  8. The HR department wants more descriptive column headings for its report on employees. Copy 
--   the statement from lab_01_05.sql to a new SQL Worksheet. Name the column headings 
--   Emp #, Employee, Job, and Hire Date, respectively

select employee_id "EMP#",last_name "Employee" ,job_id "job",hire_date "Hire Date" from employees;

--  9.The HR department has requested a report of all employees and their job IDs. Display the last 
--  name concatenated with the job ID (separated by a comma and space) and name the column 
--  Employee and Title.

SELECT last_name ||','||job_id 
AS "Employee and Title"
FROM employees;

--  10.To familiarize yourself with the data in the EMPLOYEES table, create a query to display all the 
--  data from that table. Separate each column output by a comma. Name the column title 
--  THE_OUTPUT.


select employee_id||','||first_name||','||last_name||','||email||','||phone_number||','||hire_date||','||salary||','||department_id as THE_OUTPUT from employees;











