-- file: ch03/GuardExample.hs

sayHi n _ 
	| n == 5 			= "Ooooooooo ! You chose 5"
	| n > 5 && n < 10 	= "Excellent ! You chose wisely"
sayHi _ m = m

main = do 
		putStrLn $ sayHi 5 "hello"
		putStrLn $ sayHi 9 "world"
		putStrLn $ sayHi 0 "you loose"