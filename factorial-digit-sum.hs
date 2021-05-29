{-  Problem 20
    n! means n × (n − 1) × ... × 3 × 2 × 1

    For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
    and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

    Find the sum of the digits in the number 100!
-}

-- Factorial helper function
fact :: (Num b, Enum b) => b -> b
fact n = foldr (*) 1 [1..n]

sum_digits :: (Integral n) => n -> n
sum_digits n | n < 10    = n
             | otherwise = n `mod` 10 + sum_digits (n `div` 10)

fact_sum :: Integer -> Integer
fact_sum = sum_digits . fact

main :: IO ()
main = putStrLn ("10! = " ++ show (fact 10))
    >> putStrLn ("Sum of the digits in 10! = " ++ show (fact_sum 10))
    >> putStrLn ("Sum of the digits in 100! = " ++ show (fact_sum 100))