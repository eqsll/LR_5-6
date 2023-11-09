{7.  В одномерном массиве определить максимальную длину 
неубывающего участка. Например, для 6 3 4 1 2 3 5 0 -2 -1 ответом будет 4.}

const
  N = 10;

var
  arr: array[1..N] of integer;
  i, maxLength, currLength: integer;

begin
  arr[1] := 6;
  arr[2] := 3;
  arr[3] := 4;
  arr[4] := 1;
  arr[5] := 2;
  arr[6] := 3;
  arr[7] := 5;
  arr[8] := 0;
  arr[9] := -2;
  arr[10] := -1;

  maxLength := 0; 
  currLength := 1;

  for i := 2 to N do {Начинаем со второго элемента, сравнивая его с первым и т.д.}
  begin
    if arr[i] >= arr[i - 1] then
    begin
      currLength := currLength + 1;
    end
    else
    begin
      if currLength > maxLength then
        maxLength := currLength; 
      currLength := 1; 
    end;
  end;

  if currLength > maxLength then
    maxLength := currLength;

  writeln('Максимальная длина неубывающего участка: ', maxLength);
 
end.