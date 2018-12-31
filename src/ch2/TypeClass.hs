eq :: (Eq a) => a -> a -> Bool
eq a b = a == b

neq :: (Eq a) => a -> a -> Bool
neq a b = a /= b

lt :: (Ord a) => a -> a -> Bool
lt a b = a < b

show' :: (Show s) => s -> String
show' s = "show:" ++ show s

atoi :: String -> Int
atoi r = read r :: Int

identify :: (Enum e) => e -> e
identify e = pred (succ e )

inc ::  Num n => n -> n
inc n = n + 1