myDrop n xs = if n <= 0 || null xs then xs else myDrop (n-1) (tail xs)

main = putStrLn $ show $ myDrop 4 [1, 2, 3, 4, 5]