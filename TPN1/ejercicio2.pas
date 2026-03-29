program ejercicio2;
(*Este programa: 1. Lee dos números enteros por teclado, 2. calcula e imprime
la suma y la resta utilizando dos funciones y 3. calcula e imprime el producto
y la división utilizando dos procedimientos.*)
var x, y, resultado : integer;

procedure producto(x: integer; y: integer; var r: integer);
begin
  r := x * y;
end;

procedure division(dividendo: integer; divisor: integer; var r: integer);
begin
  if divisor <> 0 then
    r := dividendo div divisor
  else
  begin
    writeln('No se puede dividir por 0');
    r := 0;
  end;
end;

function suma(x: integer; y: integer): integer;
begin
  suma := x + y;
end;

function resta(x: integer; y: integer): integer;
begin
  resta := x - y;
end;

begin
  writeln('Escriba un numero. ');
  read(x);
  writeln('Escriba otro numero.');
  read(y);
  resultado := suma(x, y);
  writeln('Suma: ', resultado);
  resultado := resta(x, y);
  writeln('Resta: ', resultado);
  producto(x, y, resultado);
  writeln('Producto: ', resultado);
  division(x, y, resultado);
  writeln('Division: ', resultado);
end.