program ejercicio6;
(*Este ejercicio lee una nota y pone 'desaprobado' si la nota es menor a 4,
'bien' para notas de 4 a 6, 'muy bien' para notas de 7 a 9 y 'Excelente para el 10.'*)
var nota: integer;

begin
  writeln('Ingrese la nota.');
  read(nota);
  if(nota < 4)then
    writeln('DESAPROBADO.')
  else if (nota >= 4) and (nota < 7) then
    writeln('BIEN.')
  else if(nota >= 7) and (nota < 10)then
    writeln('MUY BIEN.')
  else
    write('EXCELENTE.');
end.