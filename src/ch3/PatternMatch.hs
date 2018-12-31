lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

fizzBuzz :: Int -> [String]
_f' i
  | i `mod` 15 == 0 = "FizzBuzz"
  | i `mod` 5 == 0 = "Buzz"
  | i `mod` 3 == 0 = "Fizz"
  | otherwise = show i

fizzBuzz n = [_f' x | x <- [1 .. n]]

head' :: [a] -> a
head' [] = error "no head in empty list"
head' (x:_) = x

_showList' :: Show a => [a] -> String
_showList' [] = ""
_showList' (x:[]) = show x
_showList' (x:xs) = show x ++ "," ++ _showList' xs

show' :: Show a => [a] -> String
show' xs = "[" ++ _showList' xs ++ "]"
