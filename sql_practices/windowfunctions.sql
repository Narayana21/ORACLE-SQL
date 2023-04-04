
                        ---------------------WINDOW FUNCTIONS--------------------
--1) OVER():
select empno,ename,sal,sum(sal)over() total_sal from emp order by sal;
--select sum(sal) from emp;


--2) OVER PARTION BY:
select empno,ename,job,sal,round(avg(sal)over(PARTITION by job)) avg_salary from emp order by job;
select empno,ename,job,sal,sum(sal)over(PARTITION by job) total_sal from emp order by job;

--3) Row_number():
SELECT empno,ename,sal,job, deptno,ROW_NUMBER() OVER(PARTITION by deptno order by empno desc) 
AS rn FROM emp;

SELECT empno,ename,sal, job, ROW_NUMBER() OVER(PARTITION BY job ORDER BY sal DESC) AS 
row_num FROM emp;

--4)RANK():

SELECT deptno, RANK () OVER (order by deptno) rnk FROM EMP;


SELECT empno,ename,sal, job, deptno, RANK() OVER(PARTITION BY deptno ORDER BY empno DESC) AS rk
FROM emp;


SELECT empno, ename, deptno, sal,job, RANK() OVER(PARTITION by job ORDER BY sal DESC) AS rnk
FROM emp;

SELECT empno, job, sal, RANK() OVER(PARTITION BY job ORDER BY sal DESC) AS rnk
FROM emp;

--4)dense_rank():
SELECT deptno, RANK () OVER (ORDER BY deptno) city_rank FROM EMP;



--5) first_value
select empno,hiredate,job,ename,FIRST_VALUE(hiredate) OVER(PARTITION BY job ORDER BY hiredate)FIRST
from emp;

--6) last_value

select empno,ename,hiredate,job,deptno,LAST_VALUE(hiredate) OVER(PARTITION BY job ORDER BY job
RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)HIGHEST_AGE
from emp;

















