Program AddNums(output);
type lista = ^Nodo;
nodo = record
        elemento :Integer;
        siguiente : lista;
        end;
var li: lista;
num: Integer;
procedure sumatotal(var l: lista);
var p: lista;
suma : Integer;

begin
suma:= 0;
if l = Nil then begin
    new(l);
    l^.elemento:= suma;
    l^.siguiente := Nil;
end
else
    p:= l;
    while (p <> nil) do
    begin
        suma := suma + p^.elemento;
        p:= p^.siguiente;
    end;

new(p);
p^.elemento := suma;
p^.siguiente := nil;
l:= p;
end;

begin
while (num <> 0) do begin
read(num);
writeln(num);
li:= Nil;
new(li);
li^.elemento := num;
li^.siguiente:= li;
writeln(li^.elemento);
end;

sumatotal(li);
end.