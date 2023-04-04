--DML COMMANDS

--SELECT
--INSERT
--UPDATE
--DELETE
-------------------------------------
--TCL COMMANDS

--COMMIT
--ROLLBACK
--SAVE POINT
-----------------------------
select * from students;
--alter table students drop column marks;


insert into students values(1,'Nara',21,'MALE');
insert into students values(12,'Rashi Khann',23,'FEMALE');

COMMIT;
ROLLBACK;

savepoint a;
update students set age=22 where rno=1;

savepoint b;
delete from students where rno=7;

savepoint c;
insert into students values(10,'Anushka sharma',30,'FEMALE');

rollback to a;
update students set rno=7 where age=28;
---------------------------------------------------------------------

create table states(sno number(2) primary key, sname varchar2(20) not null);

drop table states;
save point p;
insert into states values(1,'AP');
save point q;
insert into states values(2,'Ts');
COMMIT;
ROLLBACK q;
select * from states;
insert into states values(&sno,'&sname');
