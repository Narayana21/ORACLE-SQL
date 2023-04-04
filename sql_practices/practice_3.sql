--practice3

SELECT ROUND(45.92334,0), TRUNC(45.9999,0)
FROM DUAL;

--  1. Write a query to display the system date. Label the column as Date

select sysdate "Date" from dual;

--   2. The HR department needs a report to display the employee number, last name, salary, and 
--  salary increased by 15.5% (expressed as a whole number) for each employee. Label the column 
--  New Salary.

select employee_id,last_name,salary,salary+(salary*(15.5/100)) "New Salary"  from employees; 

--  3.Modify your query lab_03_02.sql to add a column that subtracts the old salary from the 
--   new salary. Label the column Increase.

select employee_id,last_name,salary,salary+(salary*(15.5/100)) "New Salary" ,salary*(15.5/100) Increase from employees; 


--  4. Write a query that displays the last name (with the first letter in uppercase and all the other 
--  letters in lowercase) and the length of the last name for all employees whose name starts with 
--  the letters “J,” “A,” or “M.” Give each column an appropriate label. Sort the results by the 
--   employees’ last names

select initcap(last_name) "Name" ,length(last_name) "Length" from employees where last_name like 'J%' or last_name like 'A%' or last_name like 'M%' ;


-- 5. Rewrite the query so that the user is prompted to enter a letter that the last name starts with. For 
--  example, if the user enters “H” (capitalized) when prompted for a letter, then the output should 
--  show all employees whose last name starts with the letter “H.

select INITCAP(last_name) "Name" ,length(last_name) "Length" from employees where last_name like '&START_LETTER%';

-- 6.  The HR department wants to find the duration of employment for each employee. For each 
--  employee, display the last name and calculate the number of months between today and the 
--  date on which the employee was hired. Label the column as MONTHS_WORKED. Order your 
--  results by the number of months employed. Round the number of months up to the closest 
--  whole number.=c x ht'-;-0p9z;o

select last_name,round(months_between(sysdate,hire_date)) "MONTHS_WORKED" from employees order by 2;

--selecting odd employee_id employees
select  mod(employee_id,2)||'   '||last_name test from employees where mod(employee_id,2)=1 order by last_name;

--7. Create a query to display the last name and salary for all employees. Format the salary to be 15 
--  characters long, left-padded with the $ symbol. Label the column as SALARY.
 
select last_name ,lpad(salary,15,'$') "salary" from employees;

-- 8. Create a query that displays the first eight characters of the employees’ last names and indicates 
--  the amounts of their salaries with asterisks. Each asterisk signifies a thousand dollars. Sort the 
-- data in descending order of salary. Label the column as 
--  EMPLOYEES_AND_THEIR_SALARIES


select rpad(substr(last_name,1,8 ),(salary/1000), '*') as EMPLOYEES_AND_THEIR_SALARIES from employees;

select SUBSTR(job_id, 4,3),job_id from employees;

select rpad(last_name,8,' ')||lpad(' ',round(salary/1000),'*') "EMPLOYEES_AND_THEIR_SALARIES" from employees;

--  9. Create a query to display the last name and the number of weeks employed for all employees in 
--   department 90. Label the number of weeks column as TENURE. Truncate the number of weeks 
--  value to 0 decimal places. Show the records in descending order of the employee’s tenure.
--   Note: The TENURE value will differ as it depends on the date on which you run the query

select last_name,round(months_between(sysdate,hire_date)) "MONTHS_WORKED" from employees where department_id=90;

select last_name,trunc(months_between(sysdate,hire_date)*4.345) Tenure,
round(months_between(sysdate,hire_date)) months,round((sysdate-hire_date)/7) weeks
from employees where department_id=90;

select next_day(sysdate,'tuesday') from dual;
select last_day('01-01-22'),add_months(sysdate,4),round(months_between(sysdate,'06-06-23')) from dual;



/* 
For example, display the employee number, hire date, number of months employed, six-month 
review date, first Friday after hire date, and the last day of the hire month for all employees who have 
been employed for greater than 100 months.

*/

SELECT employee_id, hire_date,
round(MONTHS_BETWEEN (SYSDATE, hire_date)) TENURE,
ADD_MONTHS (hire_date, 6) REVIEW,
NEXT_DAY (hire_date, 'FRIDAY'), LAST_DAY(hire_date)
FROM employees
WHERE MONTHS_BETWEEN (SYSDATE, hire_date) >100;

select round(months_between('06-06-2001',sysdate)) from dual;

select trunc(sysdate,'year') from dual;

