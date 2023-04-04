select last_name,hire_date,to_char(next_day(add_months(hire_date,6),'monday'),'fmDay, "the" Ddspth "of" Month,yyyy') Review 
from employees order by  to_char(hire_date-1,'D');

select last_name,to_char(hire_date,'dd-MON-yy')"DATE", to_char(hire_date,'day')DAY,to_char(hire_date-1,'D')day_num from employees order by 4;

select last_name,hire_date, to_char(add_months(hire_date,6),'fmDay, "the" Ddspth "of" Month,yyyy') Review 
from employees order by to_char(add_months(hire_date,6),'yyyy');

SELECT last_name,to_char(salary,'l99,999') sal ,
(CASE WHEN salary<5000 THEN 'Low' 
WHEN salary<10000 THEN 'Medium' 
WHEN salary<20000 THEN 'Good' 
ELSE 'Excellent' 
END) qualified_salary 
FROM employees;
-----------------------------------------------------------------------------------
SELECT * FROM employees;
select min(hire_date) ,max(hire_date) from employees;

SELECT department_id,round( AVG(salary)) avg_sal
FROM employees
GROUP BY department_id order by 1;


select job_id, max(salary) "Maximum", min(salary) "Minimum",sum(salary) "Sum",avg(salary)"Average" 
from employees
group by job_id;