{- Definir la funcion "perfecto" que determine si un entero N dado es numero perfecto
un número es perfecto cuando es igual a la suma de sus divisores propios positivos.-}

perfecto :: Int -> Bool
perfecto n = n == sumaDivisores n (n-1)
    where
        sumaDivisores :: Int -> Int -> Int
        sumaDivisores n i 
                    | i == 0 = 0
                    | mod n i == 0 = i + sumaDivisores n (i-1) 
                    |otherwise = sumaDivisores n (i-1)


tParcial :: (Int, Int) -> Int -> String
tParcial (n,m) c 
        |n < 1 || c < 0 = "Error en los parámetros."
        |m < n = ""
        |otherwise = show n ++ " " ++ show (sumat n c 1) ++ "\n" ++ tParcial (n+1, m) c
        where
            sumat :: Int -> Int -> Int -> Double
            sumat k c x
                | x > k = 0
                |otherwise = (fromIntegral(x^3 + (5*c)) / fromIntegral((x*2) + c - 1)) + sumat k c (x + 1)