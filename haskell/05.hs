-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

module Main where

dividedByAll :: Int -> [Int] -> Bool
dividedByAll x xs = all (\y -> x `rem` y == 0) xs

smallestMultiple :: [Int] -> Int
smallestMultiple [] = error "No elements on list"
smallestMultiple xs = head [ x | x <- [1 ..], x `dividedByAll` xs]

main = print (smallestMultiple [1..20])
