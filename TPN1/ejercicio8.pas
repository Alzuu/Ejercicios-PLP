program ejercicio8;
(*Este programa muestra 15 números pares, iniciando desde el numero ingresado*)
var num, i: integer;

procedure pares(var num:integer);
begin
  num := num + 2;
end;

begin
  writeln('Ingrese un numero:');
  readln(num);
  if num mod 2 <> 0 then
    num := num - 1;

  writeln('Los 15 numeros siguientes son:');

  for i := 1 to 15 do
  begin
    pares(num);
    write(num, ' ');
  end;
end.