

create or replace procedure nara(a in number,b in number,c out number) is
begin
c:=a+b;
end;


set SERVEROUTPUT on;
declare
k number(20):=2;
l number(29):=8;
u number(20);

begin
nara(k,l,u);
dbms_output.put_line(u);
end;



create or replace function kk(jk in number,nm in number) return number is
j number(20);
begin
j:=jk+nm;
return j;
end;
   

set SERVEROUTPUT on;
declare
a number(20):=3;
b number(20):=3;
m number(20);
begin
m:=kk(a,b);
dbms_output.put_line(m);
end;


------------------------------------------------------------------------------------------
--package specification
--
--create or replace package pack as
--function add1(a number,b number)return number;
--end;
--
----package body
--
--create or replace package body pack as
--function add1(a number,b number)return number is c number;
--begin
--c:=a+b;
--return c;
--end;
--end;
--
---- package call
--
--declare
--a number:=10;
--b number:=20;
--c number;
--begin
--c:=pack.add1(a,b);
--dbms_output.put_line('addition of '||a||' and '||b||' is '||c);
--end;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- PACKAGE DECLARATION

 create or replace package calc as
function addi(a number,b number) return number;
function sub(a number,b number) return number;
function mul(a number,b number) return number;
function div(a number,b number) return number;
end calc;

-- END OF PACKAGE SPECIFICATION


-- PACKAGE BODY
create or replace package body calc as
function addi(a number,b number)return number is c number;
k number;
begin
k:=a+b;
c:=k;
return c;
end;

function sub(a number,b number)return number is c number;
begin
c:=a-b;
return c;
end;

function div(a number,b number)return number is c number;
begin
c:=a/b;
return c;
end;

function mul(a number,b number)return number is c number;
begin
c:=a*b;
return c;
end;
end calc;

-- END OF PACKAGE BODY


-- PACKAGE ACCESING
set SERVEROUTPUT on;
declare
a number:=&a;
b number:=&b;
o number;
begin

o:=calc.addi(a,b);
dbms_output.put_line('The addition of '||a||' and '||b||' is '||o);

o:=calc.sub(a,b);
dbms_output.put_line('The subtraction of '||a||' and '||b||' is '||o);

o:=calc.mul(a,b);
dbms_output.put_line('The multiplication of '||a||' and '||b||' is '||o);

o:=calc.div(a,b);
dbms_output.put_line('The division of '||a||' and '||b||' is '||o);
end;