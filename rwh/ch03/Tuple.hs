-- file: ch03/Tuple.hs
third (a, b, c) = c 

complicated (True, a, x:xs, 5) = (a, xs)

main = putStrLn $ show $ complicated (True, 1, [1.1, 2.2], 5)