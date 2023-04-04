--comparision between two numbers
set serveroutput on
declare
a number(2):=20;
b number(2):=10;
begin
if(a>b) then
dbms_output.put_line('The max is '||a);
else
dbms_output.put_line('The max is'||b);
end if;
end;

--addition of two numbers
set serveroutput on
declare
a number(2):=&a;
b number(2):=&b;
c number(2);
begin
c:=a+b;
dbms_output.put_line('The addition of a and b is '||c);
end;

--EVEN OR ODD
set serveroutput on
declare
n number;
begin
n:=&n;
if(mod(n,2)=0) then
dbms_output.put_line(n||' is even');
else
dbms_output.put_line(n||' is odd');
end if;
end;

--Arithmetic operators
set serveroutput on
declare
x integer;
y integer;
begin
x:=&x;
y:=&y;
dbms_output.put_line('ADDITION '||(x+y));
dbms_output.put_line('SUBTRACTION '||(x-y));
dbms_output.put_line('MULTIPLICATION '||(x*y));
dbms_output.put_line('DIVISION '||(x/y));
dbms_output.put_line('EXPONENTIAL '||(x**y));
end;

--reverse of a number
set serveroutput on
declare
n number;
rev number:=0;
remaindr number;
temp number;
begin
n:=&n;
temp:=n;
while (n>0) loop
 remaindr:=mod(n,10);
 rev:= rev*10+remaindr;
 n:=floor(n/10);
end loop;
dbms_output.put_line('Reverse of '||temp||' is '||rev);
end;


--PALINDROME
set serveroutput on
declare 
num number(3):=&num;
rev number(3):=0;
remen number(3);
temp number(3);
begin
temp:=num;
while temp>0 loop
 remen := mod(temp,10);
 rev := rev*10+remen;
 temp := trunc(temp/10);
end loop;
if(num = rev) then
dbms_output.put_line('The given number '||num||' is palindrome');
else
dbms_output.put_line('Not palindrome');
end if;
end;


--ARMSTRONG
set serveroutput on
declare 
num number(3):=&num;
res number(3):=0;
remen number(3);
temp number(3);
begin
temp:=num;
while temp>0 loop
 remen := mod(temp,10);
 res := res+remen*remen*remen;
 temp := trunc(temp/10);
end loop;
if(num = res) then
dbms_output.put_line('The given number '||num||' is armstrong');
else
dbms_output.put_line('Not armstrong');
end if;
end;

--multiplication table
set serveroutput on
declare
i number;
n number;
begin
n:=&n;
for i in 1..10 loop
 dbms_output.put_line(n||'*'||i||'='||n*i);
end loop;
end;

--FACTORIAL
set serveroutput on
declare
n number;
fact number:=1;
i number:=1;
c number:=0;
begin
n:=&n;
if(n<0) then
dbms_output.put_line('Factorial does not exist');
end if;
for i in 1 .. n loop
 fact:=fact*i;
end loop;
 dbms_output.put_line('Factorial of '||n||' = '||fact);
end;


--Grades of students
set serveroutput on
declare
marks number;
grade char(1);
begin
marks:= &marks;
if marks>=90 then
 grade:='A';
elsif marks>=80 and marks<90 then
 grade:='B';
elsif marks>=70 and marks<80 then
 grade:='C';
elsif marks>=60 and marks<70 then
 grade:='D';
elsif marks>=50 and marks<60 then
 grade:='E';
else
 grade:='F';
end if;
dbms_output.put_line('Grade is '||grade);
end;

--PRIME NUMBER
set serveroutput on
declare
num number:=1;
counter number:=0;
begin
num:=&num;
for i in 1..num loop
 if((mod(num,i))=0) then
  counter:=counter+1;
 end if;
end loop;
if(counter=2) then
 dbms_output.put_line(num||' is a prime');
else
dbms_output.put_line(num||' is not a prime');
end if;
end;

--print n numbers using for loop in normal order
set serveroutput on
declare
n number:=&n;
begin
  for a in 1 .. n loop
     dbms_output.put_line('value of a: '||a);
  end loop;
end;

--print n numbers using for loop in reverse order
set serveroutput on
declare
n number:=&n;
begin
  for a in reverse 1 .. n loop
     dbms_output.put_line('value of a: '||a);
  end loop;
end;
