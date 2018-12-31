rightTriangles :: () -> [(Int, Int, Int)]
rightTriangles () =
  [ (a, b, c)
  | c <- [1 .. 10]
  , a <- [1 .. c]
  , b <- [1 .. a]
  , a*a + b*b == c*c
  , a + b + c == 24
  ]
