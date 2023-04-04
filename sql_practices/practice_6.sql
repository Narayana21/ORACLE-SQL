--1. Write a query for the HR department to produce the addresses of all the departments. Use the 
--LOCATIONS and COUNTRIES tables. Show the location ID, street address, city, state or 
--province, and country in the output. Use a NATURAL JOIN to produce the results

select location_id,street_address,city,state_province,country_name 
from locations natural join countries;


--2. The HR department needs a report of all employees. Write a query to display the last name, 
--department number, and department name for all the employees
--select * from departments;
select last_name,department_id,department_name 
from employees join departments using(department_id); 

--3. The HR department needs a report of employees in Toronto. Display the last name, job, 
--department number, and the department name for all employees who work in Toronto
--select * from departments;
--select * from locations;

SELECT e.last_name,e.job_id,d.department_id, d.department_name
FROM employees e 
JOIN departments d
ON d.department_id = e.department_id 
JOIN locations l
ON d.location_id = l.location_id
where l.city='Toronto';

--4. Create a report to display employees’ last name and employee number along with their 
--manager’s last name and manager number. Label the columns Employee, Emp#, Manager, 
--and Mgr#, respectively. 

SELECT worker.last_name "Employee",worker.employee_id "EMP#", mgr.last_name "Manager",mgr.manager_id "MGR#"
FROM employees worker JOIN employees mgr
on(worker.manager_id=mgr.employee_id);

--OR

SELECT w.last_name "Employee", w.employee_id "EMP#",m.last_name "Manager", m.employee_id "Mgr#"
FROM employees w join employees m 
ON (w.manager_id = m.employee_id) order by 4; 

--5. Modify lab_05_04.sqlto display all employees including King, who has no manager.Order the results
--by the employee number. 


SELECT w.last_name "Employee", w.employee_id "EMP#",m.last_name "Manager", m.employee_id "Mgr#"
FROM employees w LEFT OUTER JOIN employees m
ON (w.manager_id = m.employee_id) order by 4 desc;

--6. Create a report for the HR department that displays employee last names, department numbers, 
--and all the employees who work in the same department as a given employee. Give each 
--column an appropriate label. 

SELECT e.department_id department, e.last_name employee,c.last_name colleague 
FROM employees e JOIN employees c 
ON (e.department_id = c.department_id)
WHERE e.employee_id <> c.employee_id
ORDER BY e.department_id, e.last_name, c.last_name;


--7. The HR department needs a report on job grades and salaries. To familiarize yourself withthe
--JOB_GRADES table, first show the structure of the JOB_GRADES
--table. Then create aquery that displays the name, job, department name, salary, and grade for all employees.


--8. The HR department wants to determine the names of all the employees who were hired after 
--Davies. Create a query to display the name and hire date of any employee hired after employee 
--Davies

SELECT e.last_name, e.hire_date 
FROM employees e JOIN employees davies
ON (davies.last_name = 'Davies')
WHERE davies.hire_date < e.hire_date;

--9. The HR department needs to find the names and hire dates of all the employees who were hired 
--before their managers, along with their managers’ names and hire dates

SELECT w.last_name, w.hire_date, m.last_name, m.hire_date
FROM employees w JOIN employees m
ON (w.manager_id = m.employee_id)
WHERE w.hire_date < m.hire_date;

