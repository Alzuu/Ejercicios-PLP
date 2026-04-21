program ejercicio9;
(*Este programa devuelve la vocal que apareció más veces en una cadena de texto.*)
var texto: char[25];

vocalConMasApariciones(nroVocales: integer[]):integer;
  //Esta funcion devuelve la posicion del arreglo de la vocal que más veces apareció.
var i,max: integer;
begin
  max:= 0;
  for i := 0 to 3 do
  begin
    if nroVocales[max] < nroVocales[max + i] then
      max := i + 1;
    else
      max := i;
  end;
  vocalConMasApariciones := max;
end;

function contarVocales(texto:char[]):char[];
  // Esta función cuenta todas las apariciones de cada vocal.
  var vocalMax: char[2];
  var nroVocales: integer[5];
  var i, max: integer;
  var i := 0;
begin
    while texto[i] <> '.' do
      begin
      case texto[i] of
        a: nroVocales[0]++;
        e: nroVocales[1]++;
        i: nroVocales[2]++;
        o: nroVocales[3]++;
        u: nroVocales[4]++;
      end;
      i++;
      end;
    max := vocalConMasApariciones(nroVocales);
    vocalMax[2] := max;
    begin
      case max of
      0: vocalMax[max] := 'a';
      1: vocalMax[max] := 'e';
      2: vocalMax[max] := 'i';
      3: vocalMax[max] := 'o';
      4: vocalMax[max] := 'u';
    end;
end;

begin
  writeln('Ingrese un texto (terminado en punto)');
  readln(texto);
end.