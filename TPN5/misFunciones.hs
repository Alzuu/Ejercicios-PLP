allEqual :: Int -> Int -> Int -> Bool
allEqual n m p = (n == m) && (m == p)

losCuatroIguales :: Int -> Int -> Int -> Int -> Bool
losCuatroIguales a b c d = (a == b) && (b == c) && (c == d)

losCuatroIguales2 :: Int -> Int -> Int -> Int -> Bool
losCuatroIguales2 a b c d = allEqual a b c && (c == d)

cuantosIguales :: Int -> Int -> Int -> Int
cuantosIguales a b c
  | (a == b) && (b == c) = 3
  | (a == b) || (a == c) || (b == c) = 2
  | otherwise = 0

cuantosIgualesDeDos :: Int -> Int -> Int
cuantosIgualesDeDos a b
  | a == b = 2
  | otherwise = 0

-----------------------------------------------------------------------------------------
-- Ejercicio 5

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Sucesión Extraña:
sumatoria :: Integer -> Integer -> Integer
sumatoria 0 _ = 0
sumatoria i n = i ^ n + sumatoria (i - 1) n

sucesionDosNumeros :: Integer -> Integer -> Double
sucesionDosNumeros x n = realToFrac (sumatoria n n) / realToFrac (factorial x)

-----------------------------------------------------------------------------------------
-- Ejercicio 6

nAnd :: Bool -> Bool -> Bool
nAnd True True = False
nAnd _ _ = True

-----------------------------------------------------------------------------------------
-- Ejercicio 7

funny :: Integer -> Integer -> Integer -> Bool
funny x y z
  | x > z = True
  | x >= y = False
  | otherwise = True

funnySimpl :: Integer -> Integer -> Integer -> Bool
funnySimpl x y z = x > z || x < y

-----------------------------------------------------------------------------------------
-- Ejercicio 8

allDiferent :: Int -> Int -> Int -> Bool
allDiferent x y z = x /= y && x /= z && y /= z

-----------------------------------------------------------------------------------------
-- Ejercicio 9

allDiferentWrong :: Int -> Int -> Int -> Bool
allDiferentWrong x y z = x /= y && y /= z

-----------------------------------------------------------------------------------------
-- Ejercicio 10

cuartaPotencia :: Int -> Int
cuartaPotencia n = n * n * n * n

cuartaPotencia1 :: Int -> Int
cuartaPotencia1 n = n ^ 4

cuartaPotencia2 :: Int -> Int
cuartaPotencia2 n = alCuadrado n * alCuadrado n

alCuadrado :: Int -> Int
alCuadrado n = n ^ 2

-----------------------------------------------------------------------------------------
-- Ejercicio 12

charAInt :: Char -> Int
charAInt c = fromEnum c - fromEnum '0'

-----------------------------------------------------------------------------------------
-- Ejercicio 13

digitoRomano :: Char -> String
digitoRomano '1' = "I"
digitoRomano '2' = "II"
digitoRomano '3' = "III"
digitoRomano '4' = "IV"
digitoRomano '5' = "V"
digitoRomano '6' = "VI"
digitoRomano '7' = "VII"
digitoRomano '8' = "VIII"
digitoRomano '9' = "IX"
digitoRomano _ = ""

-----------------------------------------------------------------------------------------
-- Ejercicio 14

entreLineas :: String -> String -> String -> String
entreLineas a b c = a ++ "\n" ++ b ++ "\n" ++ c ++ "\n"

-- Acordarse de poner putStr en la terminal.

-----------------------------------------------------------------------------------------
-- Ejercicio 15

duplicar :: String -> Integer -> String
duplicar _ 0 = "\n"
duplicar s n = s ++ " " ++ duplicar s (n - 1)

-----------------------------------------------------------------------------------------
-- Ejercicio 16

hacerEspacios :: Int -> String
hacerEspacios 0 = ""
hacerEspacios n = " " ++ hacerEspacios (n - 1)

-----------------------------------------------------------------------------------------
-- Ejercicio 17

factorialTable :: Integer -> Integer -> String
factorialTable m n
  | n < 0 || m < 0 = "ERROR: m y n deben ser positivos. "
  | n < m = "ERROR: No se puede n < m"
  | otherwise = tituloTabla ++ cuerpoTabla
  where
    tituloTabla = " n\t| n! \n------------------\n"
    cuerpoTabla = unlines [show x ++ "\t| " ++ show (factorial x) | x <- [m .. n]]

-- unlines, toma una lista de strings y las une con un salto de línea.
-- show, convierte los números Int a String para poder concatenarlos
-- [m .. n], es una lista de compresión.

-----------------------------------------------------------------------------------------
-- Ejercicio 18

justificarCentro :: Int -> String -> String
justificarCentro n st
  | n < 0 = "ERROR: Debe ser n >= 0. \n"
  | n < length st = "ERROR: Debe ser n >= longitud st. \n"
  | otherwise = salidaCentro ++ "\n"
  where
    cantidad = div (n - length st) 2
    salidaCentro = hacerEspacios cantidad ++ st ++ hacerEspacios cantidad

-----------------------------------------------------------------------------------------
-- Ejercicio 19

minMax2Arg :: (Int, Int) -> (Int, Int)
minMax2Arg (x, y)
  | x <= y = (x, y)
  | otherwise = (y, x)

minMax3Arg :: (Int, Int, Int) -> (Int, Int)
minMax3Arg (x, y, z) = (min x (min y z), max x (max y z))

minMax4Arg :: (Int, Int, Int, Int) -> (Int, Int)
minMax4Arg (w, x, y, z) = (minimum lista, maximum lista)
  where
    lista = [w, x, y, z]

-----------------------------------------------------------------------------------------
-- Ejercicio 20

maxOcurr :: Int -> Int -> (Int, Int)
maxOcurr x y
  | x > y = (x, 1)
  | x < y = (y, 1)
  | otherwise = (x, 2)

-- maxOcurr3Arg :: Int -> Int -> Int (Int, Int)
-- maxOcurr3Arg x y z

-----------------------------------------------------------------------------------------
-- Ejercicio 21

ordenTriple :: (Int, Int, Int) -> (Int, Int, Int)
ordenTriple (x, y, z)
  | x <= y && y <= z = (x, y, z)
  | x <= z && z <= y = (x, z, y)
  | y <= x && x <= z = (y, x, z)
  | y <= z && z <= x = (y, z, x)
  | z <= x && x <= y = (z, x, y)
  | z <= y && y <= x = (z, y, x)

ordenTriple2 :: (Int, Int, Int) -> (Int, Int, Int)
ordenTriple2 (x, y, z) = (minimo, medio, maximo)
  where
    minimo = min (min x y) z
    maximo = max (max x y) z
    medio = (x + y + z) - minimo - maximo

-----------------------------------------------------------------------------------------
-- Ejercicio 22

type Nombre = String

type Telefono = String

-- Para un directorio telefónico.
type Contacto = (Nombre, Telefono)

type Directorio = [Contacto]

miDirectorio :: Directorio
miDirectorio = [("Juan Perez", "123-456789"), ("Pedro Juanez", "987-654321")]

-- Para una base de datos de libros.
type AñoPublicacion = Int

type Autor = String

type Editorial = String

type Libro = (Nombre, AñoPublicacion, Autor, Editorial)

type Biblioteca = [Libro]

miBiblioteca :: Biblioteca
miBiblioteca = [("Ficciones", 1944, "Jorge Luis Borges", "Sur"), ("Rayuela", 1963, "Julio Cortazar", "Sudamericana")]

-----------------------------------------------------------------------------------------
-- Ejercicio 23

devolucionPar :: (Int, Int) -> (Int, Int) -> (Int, Int) -> (Int, Int)
devolucionPar (a, b) (c, d) (e, f) = (minimo, maximo)
            where
                minimo = minimum [a, b, c, d, e, f]
                maximo = maximum [a, b, c, d, e, f]

myMinimum :: [Int] -> Int
myMinimum [] = error "Lista Vacia"
myMinimum [x] = x
myMinimum (x:xs) = min x (myMinimum xs)

myMaximum :: [Int] -> Int
myMaximum [] = error "Lista Vacia"
myMaximum [x] = x
myMaximum (x:xs) = max x (myMaximum xs)

-----------------------------------------------------------------------------------------
-- Ejercicio 24

repetirDigitos :: Int -> String
repetirDigitos n
    |n<0 = "ERROR DE DATO."
    |otherwise = generarCad n
      where
        generarCad x
          | x <= 0 = ""
          |otherwise = generarCad (div x 10) ++ repetirN (mod x 10) (mod x 10) ++ "\n"
      
        repetirN k veces
          | veces <= 0  = ""
          | otherwise = show k ++ repetirN k (veces-1)
-----------------------------------------------------------------------------------------
-- Ejercicio 25

alinear :: String -> String -> String -> Int -> String
alinear a b c n = salida
    where
        longStr = length a + length b + length c
        esp = div (n - longStr) 2  
        salida = a ++ hacerEspacios esp ++ b ++ hacerEspacios esp ++ c ++ "\n"

-- Reciclo la funcion de hacerEspacios de más arriba.

-----------------------------------------------------------------------------------------
-- Ejercicio 26

bisiestos :: Int -> Int -> String
bisiestos m n 
    | n < 0 || m < 0 = "Error: Los limites deben ser positivos."
    | n < m = ""
    |otherwise = show m ++ " " ++ show (esBisiesto m) ++ "\n" ++ bisiestos (m+1) n
    where
    esBisiesto :: Int -> String
    esBisiesto y
                | mod y 100 == 0 && mod y 400 == 0 = "Es Bisiesto."
                | mod y 4 == 0 && mod y 100 /= 0 = "Es Bisiesto."
                |otherwise = "No es bisiesto." 

-----------------------------------------------------------------------------------------
-- Ejercicio 27

multiplosTripla :: (Int, Int, Int) -> String
multiplosTripla (a, b, c)
        | a > b || c <= 0 = ""
        |otherwise = esMultiplo a c ++ " " ++ multiplosTripla (a+1, b, c)
        where
            esMultiplo :: Int -> Int -> String
            esMultiplo a c
                        | mod a c == 0 = show a 
                        |otherwise = ""
-----------------------------------------------------------------------------------------
-- Ejercicio 28

intCuadradosPerfectos :: (Int, Int) -> String
intCuadradosPerfectos (m,n) = generarCad (m,n) 1
        where 
          generarCad (m, n) i
            | n < m = "" 
            |otherwise = esCP m i ++ generarCad (m+1, n) (i+1)
          esCP x i
            | x >= 0 && (raiz x * raiz x) == x = show x ++ " " ++ show i ++ "\n"
            |otherwise = ""
          raiz x = round(sqrt(fromIntegral x))