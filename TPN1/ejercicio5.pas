program ejercicio5;
(*Este programa dice si un número N es divisible por otro número M*)
var N, M: integer;

function esDivisible(N:integer; M:integer):boolean;
begin
  if(M = 0) then
    esDivisible := false
  else if(N mod M = 0) then
    esDivisible := true
  else 
    esDivisible := false;
end;

begin
  writeln('Ingrese un numero N:');
  read(N);
  writeln('Ingrese un numero M:');
  read(M);
  writeln('N es divisible por M: ', esDivisible(N,M));
end.