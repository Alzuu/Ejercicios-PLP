program ejercicio1;
(*Realice la traza del programa en Pascal. 
El objetivo es que comprenda el cambio de valores en las variables durante la ejecución.*)
var x,y,z : integer;

function promedio(a:integer; var b: integer): integer;
begin
    b := 4;
    promedio := (a + b) div 2;
end;

begin
    x := 10;
    y := 5;
    z := promedio(x,y);
    x := z + y;
    writeln('x := ', x);
    writeln('y := ', y);
    writeln('z := ', z);
end.