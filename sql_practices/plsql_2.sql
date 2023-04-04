-- for with continue
set serveroutput on
begin
for n_index in 1..10
loop
 if mod(n_index,2)=1 then
  continue;
  end if;
  dbms_output.put_line(n_index);
  end loop;
  end;
  
-- for with when
set serveroutput on
begin
for n_index in 1..10
loop    
   continue
   when mod(n_index,2)=0;
dbms_output.put_line(n_index);
 end loop;
end;

-- mul table using for loop
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

-- mul table using while loop
set serveroutput on
declare
i number:=1;
n number;
begin
n:=&n;
while(i<=10)loop
  dbms_output.put_line(n||'*'||i||'='||n*i);
  i:=i+1;
  end loop;
end;

-- functions
set serveroutput on
create or replace function maxi(x in number,y in number)return number is
begin
if(x>y) then
return x
else
return y 
end;
declare
a number:=10;
b number:=20;
c number;
begin
c:=maxi(a,b);
dbms_output.put_line('The maximum from function is ' ||c);
end;


 
   
