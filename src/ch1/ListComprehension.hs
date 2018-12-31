twice :: [Int] -> [Int]
length' :: [Char] -> Int
takeUppercase :: [Char] -> [Char]
twice xs = [x * 2 | x <- xs]

length' xs = sum [1 | _ <- xs]

takeUppercase st = [c | c <- st, c `elem` ['A' .. 'Z']]
