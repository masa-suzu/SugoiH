showList' :: Show a => [a] -> String
showList' ls =
  "[" ++
  let show' ls' =
        case ls' of
          [] -> ""
          (x:[]) -> show x
          (x:xs) -> show x ++ "," ++ show' xs
   in show' ls ++ "]"
