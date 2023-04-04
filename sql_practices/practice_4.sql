--practice 4

--1. Create a report that produces the following for each employee:
--<employee last name> earns <salary> monthly but wants <3 times salary.>.
-- Label the column Dream Salaries

select concat(last_name,'earns')||concat(to_char(salary,'$99,999'),'monthly but wants')||TO_CHAR(salary*3,'$99,999') "Dream salaries" from employees;

--2. Display each employee’s last name, hire date, and salary review date, which is the first Monday 
--after six months of service. Label the column REVIEW. Format the dates to appear in the format 
--similar to “Monday, the Thirty-First of July, 2000.
-- IN BELOW QUERY FM (FILL MODE) IS USED TO REMOVE THE LEADIN AND SUCCEDING BLANK SPACES
select last_name, hire_date, to_char((next_day(add_months(hire_date,6),'Monday')),'fmday,"the" ddspth "of" month,RRRR') "Review" from employees;

--3.Display the last name, hire date, and day of the week on which the employee started. Label the 
--column DAY. Order the results by the day of the week, starting with Monday

select last_name,to_char(hire_date,'dd-MON-yy')"DATE", to_char(hire_date,'day')DAY,to_char(hire_date-1,'D')day_num from employees order by 4;
--order by to_char(hire_date-1,'d');

--4. Create a query that displays the employees’ last names and commission amounts. If an employee 
--does not earn commission, show “No Commission.” Label the column COMM
select last_name,nvl(to_char(commission_pct),'No Commission') "COMM" from employees;


--If you have time, complete the following exercises:

--5. Using the DECODE function, write a query that displays the grade of all employees based on the 
--value of the column JOB_ID, using the following data

SELECT  job_id,
DECODE(job_id, 'IT_PROG', 'C',
'ST_CLERK', 'E',
'SA_REP', 'D',
'AD_PRES','A',
'ST_MAN','B',
0)
GRADE 
FROM employees;

--6.Above question using case statement

select  job_id,
case job_id when 'IT_PROG' then 'C'
when 'ST_CLERK'then 'E'
when 'SA_REP' then 'D'
when 'AD_PRES'then 'A'
when 'ST_MAN'then'B'
else '0' end
"GRADE" 
FROM employees;

