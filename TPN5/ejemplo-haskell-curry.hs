-- Definimos una función que suma dos números
suma :: Int -> Int -> Int
suma x y = x + y

-- Currificación: aplicamos solo el primer argumento
sumarTres :: Int -> Int
sumarTres = suma 3

main :: IO ()
main = do
  putStrLn $ "Resultado normal: " ++ show (suma 3 4) -- Uso de la función de forma normal
  putStrLn $ "Resultado currificado: " ++ show (sumarTres 4) -- Uso de la versión currificada