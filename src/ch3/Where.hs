bmiTell :: Double -> Double -> String
bmiTell w h
  | bmi w h <= 18.5 = "underweight"
  | bmi w h <= 25.0 = "normal"
  | bmi w h <= 30 = "fatty"
  | otherwise = "whale"
  where
    bmi w h = w / (h * h)

initials :: String -> String -> String
initials firstName lastName = [f] ++ "." ++ [l]
  where
    (f:_) = firstName
    (l:_) = lastName
