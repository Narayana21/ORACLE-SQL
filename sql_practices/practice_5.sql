select count(*) from employees;

select last_name, department_id from employees where department_id=50;
SELECT COUNT(*)
FROM employees
WHERE department_id = 50;

SELECT department_id,employee_id, AVG(salary)
FROM employees
GROUP BY department_id ,employee_id
order by avg(salary);

select department_id,max(salary)
from employees
group by department_id
having max(salary)>10000;


--4. Find the highest, lowest, sum, and average salary of all employees. Label the columns
--as Maximum, Minimum, Sum, and Average, respectively. Round your results to the nearest 
--whole number.

select max(salary) "Maximum", min(salary) "Minimum",sum(salary) "Sum",avg(salary)"Average" 
from employees;

--5.Modify the query in lab_05_04.sql to display the minimum, maximum, sum, and average 
--salary for each job type

select job_id, max(salary) "Maximum", min(salary) "Minimum",sum(salary) "Sum",avg(salary)"Average" 
from employees
group by job_id;

--6-A. Write a query to display the number of people with the same job

select job_id, count(*)
from employees
group by job_id;

--6-B. Generalize the query so that the user in the HR department is prompted for a job title
SELECT job_id, COUNT(*) FROM   employees WHERE  job_id = '&job_title' GROUP BY job_id; 


--7. Determine the number of managers without listing them. Label the column as Number of 
--Managers. Hint: Use the MANAGER_ID column to determine the number of managers

select count( distinct manager_id) "Number of Managers" from employees;

--8. Find the difference between the highest and lowest salaries. Label the column DIFFERENCE.

select max(salary)-min(salary) DIFFERENCE from employees;

--9. Create a report to display the manager number and the salary of the lowest-paid employee for 
--that manager. Exclude anyone whose manager is not known. Exclude any groups where the 
--minimum salary is $6,000 or less. Sort the output in descending order of salary

select manager_id,min(salary)
from employees
group by manager_id
having min(salary)>6000 and manager_id is not null
order by min(salary) desc;
--or
SELECT   manager_id, MIN(salary) 
FROM     employees
WHERE    manager_id IS NOT NULL 
GROUP BY manager_id
HAVING   MIN(salary) > 6000  
ORDER BY MIN(salary) DESC;

/*
10. Create a query that will display the total number of employees and,
of that total, the number  of employees hired in 1995, 1996, 1997, and 1998.
Create appropriate column headings.
*/

SELECT  COUNT(*) total,  
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2001,1,0))"2001",    
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2002,1,0))"2002", 
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2003,1,0))"2003", 
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2004,1,0))"2004"
FROM    employees; 


/*
11. Create a matrix query to display the job, the salary for that job based on department number, 
and the total salary for that job, for departments 20, 50, 80, and 90, giving each column an 
appropriate heading
*/
SELECT   job_id "Job", 
SUM(DECODE(department_id , 20, salary)) "Dept 20",
SUM(DECODE(department_id , 50, salary)) "Dept 50",
SUM(DECODE(department_id , 80, salary)) "Dept 80",
SUM(DECODE(department_id , 90, salary)) "Dept 90",
SUM(salary) "Total" FROM  employees GROUP BY job_id; 

select sum(salary) from employees where department_id=20;

SELECT * FROM 
(SELECT empno, ename, job, deptno, sal FROM Emp)
PIVOT (sum(Sal) FOR deptno IN 
(10,20,30));
