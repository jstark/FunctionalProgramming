safeSecond :: [a] -> Maybe a
safeSecond []  = Nothing
safeSecond xs  = if null (tail xs)
                 then Nothing
                 else Just (head (tail xs))

main = putStrLn $ show $ safeSecond [1, 2]