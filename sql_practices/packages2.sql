
-----------------------------------------------------PACKAGES-----------------------------------------------------------
-- .1) PERFORM ARTHIMETIC OPERATIONS

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

---------------------------------------------------------------------------------------------------------------------------
-- PACAKAGE SPECIFICATION

create or replace package cal as
function mini(a number,b number) return number;
procedure maxi(a number,b number,c out number);
function even_odd(a number) return varchar2;
end cal;

-- END OF PACKAGE SPECIFICATION

-- PACKAGAE BODY

create or replace package body cal is

-- 1st member of package
function mini(a number,b number) return number is
c number;
begin
if(a<b) then
return a;
else
return b;
end if;
end;

-- 2nd member of package
procedure maxi(a number,b number,c out number) is
begin
if(a>b) then 
c:=a;

else
c:=b;

end if;
end;

-- 3rd member of package
function even_odd(a number) return varchar2 is
begin
if(mod(a,2)=0) then
return 'EVEN';
else
return 'ODD';
end if;
end;
end;
-- PACKAGE BODY ENDS
-----------------------------------------------------
set serveroutput on;
declare
a number:=&a;
b number:=&b;
i number;
d varchar2(20);
u number;
begin
i:=cal.mini(a,b);
dbms_output.put_line('The function mini returns smallest value '||i);
cal.maxi(a,b,u);
dbms_output.put_line('The function maxi  returns largest value '||u);

d:=cal.even_odd(a);
dbms_output.put_line('The given number ' ||' is '||d);
end;
-----------------------------------------------------------------------------------------------------------------------------



