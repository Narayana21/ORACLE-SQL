create or replace view emp_dept_join as select d.deptno,d.dname,e.empno,e.ename,e.sal from emp e, dept d
where e.deptno = d.deptno;


CREATE OR REPLACE TRIGGER insert_emp_dept
INSTEAD OF INSERT ON emp_dept_join
DECLARE
  v_deptno  dept.deptno%TYPE;
BEGIN

  BEGIN
    SELECT deptno INTO v_deptno
    FROM   dept
    WHERE  deptno = :new.deptno;

  EXCEPTION
    WHEN NO_DATA_FOUND THEN

      INSERT INTO dept (deptno, dname)
             VALUES (:new.deptno, :new.dname)
             RETURNING deptno INTO v_deptno;
  END;

  INSERT INTO emp (empno, ename,sal, deptno)
         VALUES(:new.empno, :new.ename,:new.sal, v_deptno);

END insert_emp_dept;
/ 
SHOW ERRORS;

insert into emp_dept_join(deptno,dname,empno,ename,sal) values(50,'Systems',1009,'ABCD',1200);
 select * from emp;
