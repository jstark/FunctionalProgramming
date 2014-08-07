fromMaybe1 defval wrapped = 
	case wrapped of
		Nothing -> defval
		Just val-> val

main = putStrLn $ show $ fromMaybe1 2 (Just 5)
