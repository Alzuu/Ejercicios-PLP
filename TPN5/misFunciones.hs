allEqual :: Int -> Int -> Int -> Bool
allEqual n m p = (n == m)&&(m == p)

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

-- Ejercicio 5
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n - 1) + fibonacci(n - 2)

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial(n - 1)

-- Sucesión Extrana:
sumatoria :: Integer -> Integer -> Integer
sumatoria 0 _ = 0
sumatoria i n = i^n + sumatoria (i - 1) n

sucesionDosNumeros :: Integer -> Integer -> Double
sucesionDosNumeros x n = realToFrac(sumatoria n n) / realToFrac(factorial x)

--Ejercicio 6
nAnd :: Bool -> Bool -> Bool
nAnd True True = False
nAnd  _    _   = True

--Ejercicio 7
funny :: Integer -> Integer -> Integer -> Bool
funny x y z 
    | x > z = True
    | x >= y = False
    | otherwise = True

funnySimpl :: Integer -> Integer -> Integer -> Bool
funnySimpl x y z = x > z || x < y

--Ejercicio 8
allDiferent :: Int -> Int -> Int -> Bool
allDiferent x y z = x /= y && x /= z && y /= z

--Ejercicio9
