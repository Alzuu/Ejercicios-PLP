program ejercicio3;
(*Este programa calcula el área mediante una función y perímetro mediante
un procedimiento de un rectángulo.*)
var base, altura, resultado: double;

procedure perimetro(base: double; altura: double; var resultado: double);
begin
  resultado := 2*(base + altura);
end;

function area(base: double; altura: double): double;
begin 
  area := base * altura;
end;

begin

  writeln('Ingrese la base.');
  read(base);
  while(base < 0)do
    begin
      writeln('Ingrese un número positivo.');
      read(base);
    end;

  writeln('Ingrese la altura.');
  read(altura);
  while(altura < 0)do
    begin
      writeln('Ingrese un número positivo.');
      read(altura);
    end;
  // Como double se ve en notación científica pongo eso que significa ancho mínimo y cant. decimales.
  perimetro(base, altura, resultado);
  writeln('Perimetro: ', resultado:0:2);
  resultado := area(base, altura);
  writeln('Area: ', resultado:0:2);
end.