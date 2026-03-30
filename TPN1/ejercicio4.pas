program ejercicio4;
(*Este programa lee un número real y determina si es positivo, negativo o 0*) 
var num: double;

function mayorMenor(num: double): char;
begin
  if num = 0 then
    mayorMenor := '0'
  else if num>0 then
      mayorMenor := 'P'
    else
      mayorMenor := 'N';
end;

//MAIN
begin
  writeln('Ingrese un número: ');
  read(num);
  writeln('El número es: ', mayorMenor(num));
end.