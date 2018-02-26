-- Each new term in the Fibonacci sequence is generated
-- by adding the previous two terms.
-- By starting with 1 and 2, the first 10 terms will be:
-- 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
-- By considering the terms in the Fibonacci sequence whose
-- values do not exceed four million,
-- find the sum of the even-valued terms.

module Main where

fib :: Int -> Integer
fib = (map fib' [0..] !!)
  where fib' 0 = 0
        fib' 1 = 1
        fib' n = fib (n-2) + fib (n-1)

fibonacci = [fib(x) | x <- [1..]]
list = [x | x <- takeWhile(<= 4000000) fibonacci, even x]

answer = sum list

main = print answer
