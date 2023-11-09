{4.	Заполнить массив А из 30 элементов случайными числами из диапазона
[-99, 67]. Сформировать массив В, в который записать только четные элементы массива А.}
var a:array[1..30] of integer;
b:array[1..30] of integer;
i: integer;
k: integer;
begin
  k:= 1;
  for i:= 1 to 30 do
    a[i]:= Random(-99,67);
  for i:= 1 to 30 do
    write(a[i], ' ');
  for i:= 1 to 30 do
    if a[i] mod 2 = 0 then
      begin
      b[k] := a[i];
      k:= k+1;
      end;
      writeln(' ');
  for k:= 1 to 30 do
    write(b[k], ' ');
      
  
end.