{3.	Сформировать одномерный массив из 20 целых чисел из диапазона [-52,65] 
случайным образом. Найти наибольший элемент массива и его номер (при условии, что все элементы массива различны). 
}


var a:array[1..20] of integer;
i: integer;
s: integer;
x: integer;
y:integer;
x1:integer;
begin 
  s := 20;
  x1:=-52;
  x :=65;
  y:=0;
  
  for i:=1 to s do 
    a[i] := Random(-52,65);
  for i:=1 to s do
    write(a[i],' ');
  
  for i:= 1 to s do
    if (a[i] > x1) and (a[i]>0) then begin
      x1:= a[i];
      y:=i;
      end;

writeln('итог',x1,' ',y); 
 
  for i:= 1 to s do
    if (a[i] < x) and (a[i]>0) then begin
      x:= a[i];
      y:=i;
      end;

writeln('итог',x,' ',y); 
      
  for i:= 1 to s do
    if a[i] mod 5 = 0 then begin
      x:= a[i];
      y:=i;
      end;
        
writeln('итог',x,' ',y);    
end.


