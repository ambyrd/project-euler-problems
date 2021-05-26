{-  Problem 48
    The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.

    Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.
-}

selfpow :: Integral b => b -> b
selfpow n = n^n

series_sum :: Integer
series_sum = sum (map selfpow [1..1000])

main :: IO ()
main = do putStrLn "Last ten digits of the series 1^1 + 2^2 + 3^3 + ... + 1000^1000:"
          putStrLn (show (series_sum `mod` 10000000000))  --using modulo to extract the last 10 digits
