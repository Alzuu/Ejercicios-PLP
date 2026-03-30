program ejercicio7;
(*Este programa calcula la suma acumulada de numeros hasta ingresar un 0.*)
var acumulado, num: integer;

procedure acumular(num:integer; var acumulado:integer);
begin
  acumulado := acumulado + num;
end;

begin
  acumulado := 0;
  repeat
    writeln('Ingrese un numero.');
    read(num);
    acumular(num, acumulado);
  until (num = 0);
  writeln('Acumulado: ', acumulado );
end.