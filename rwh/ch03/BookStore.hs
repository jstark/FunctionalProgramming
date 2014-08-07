-- file: ch03/BookStore.hs
data BookInfo = Book Integer String [String]
                deriving Show

main = putStrLn $ show $ Book 9780135072455 "Algebra of Programming" ["Richard Bird", "Oege de Moor"]
