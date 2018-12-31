append :: [a] -> [a] -> [a]
append x y = x ++ y

cons :: a -> [a] -> [a]
cons x y = x:y

at :: [a] -> Int -> a 
at x y = x !! y

null' :: Eq a => [a] -> Bool
null' x = x == []

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]