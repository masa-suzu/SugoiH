append x y = x ++ y
cons x y = x:y
at x y = x !! y

null' x = [] == x
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]