max' :: (Ord a) => [a] -> a
max' [] = error "max of empty list"
max' (x:[]) = x
max' (x:xs) = max x (max' xs)
