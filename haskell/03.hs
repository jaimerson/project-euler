-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?
module Main where
import Data.List (nub, maximum)
import Debug.Trace (trace)

primes = [n | n<-[2..], not $ elem n [j*k | j<-[2..n-1], k<-[2..n-1]]]

primeFactors' :: Integer -> [Integer] -> [Integer]
primeFactors' a b
  | trace ("primeFactors' a: " ++ show a ++ " b: " ++ show p) False = undefined
  | a == 1                   = []
  | fromIntegral(p) > sqrt (fromIntegral a) = [a]
  | a `mod` p == 0           = p:(primeFactors' (a `div` p) b)
  | otherwise                = primeFactors' a (tail b)
  where p = head b

primeFactors :: Integer -> [Integer]
primeFactors a = nub (primeFactors' a primes)

answer = maximum (primeFactors 600851475143)

main = print answer
