var
  a,b: array[1..20] of Integer;
  i,c: Integer;
begin
  for i:= 1 to 20 do
  begin
    a[i]:= random (-15,15);
    write (a[i],' ');
    end;
    writeln;
    begin
    c:= 1;
    for i:= 1 to 20 do
      if a[i] > 0 then
        begin
        b[c]:=a[i];
        c:=c+1;
      end;
      for i:=1 to c - 1 do
      write(' ',b[i]);
end;
end.