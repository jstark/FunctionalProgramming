-- file: ch03/BookStore.hs
data BookInfo = Book Integer String [String]
                deriving Show

-- book review
-- synonyms
type CustomerID = Integer
type ReviewBody = String

data BookReview = BookReview BookInfo CustomerID ReviewBody

-- credit card 
type CardHolder = String
type CardNumber = Integer
type Address    = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                 deriving Show

main = putStrLn $ show $ Book 9780135072455 "Algebra of Programming" ["Richard Bird", "Oege de Moor"]
