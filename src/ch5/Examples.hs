zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
  where
    g x y = f y x

flip'' :: (a -> b -> c) -> b -> a -> c
flip'' f x y = f y x

flip''' :: (a -> b -> c) -> b -> a -> c
flip''' f = \x y -> f y x

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x:xs)
  | f x == True = x : filter' f xs
  | otherwise = filter' f xs

largestDivisible :: Integer
largestDivisible = head (filter' p [10000,9999 ..])
  where
    p x = x `mod` 3829 == 0

chain :: Integer -> [Integer]
chain 1 = [1]
chain n
  | even n = n : chain (n `div` 2)
  | odd n = n : chain (n * 3 + 1)

numLongChains :: Int
numLongChains = length (filter' isLong (map' chain [1 .. 100]))
  where
    isLong xs = length xs > 15

numLongChains' :: Int
numLongChains' =
  length (filter' (\xs -> length xs > 15) (map' chain [1 .. 100]))

and' :: [Bool] -> Bool
and' xs = foldr (&&) True xs

and'' :: [Bool] -> Bool
and'' xs = foldl (&&) True xs

eighty :: Int
eighty = sum $ filter (> 10) $ map (* 2) [2 .. 10]

productMinusThree :: (Num a) => a -> a
productMinusThree = negate . (* 3)

foo :: Double
foo = sum . replicate 5 $ max 6.7 8.9

sum' :: (Num a) => [a] -> a
sum' xs = foldl (+) 0 xs

sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0
