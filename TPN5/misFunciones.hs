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
                    