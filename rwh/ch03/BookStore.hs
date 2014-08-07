-- file: ch03/BookStore.hs
data BookInfo = Book Integer String [String]
                deriving Show

bookID      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors

nicerBookID			(Book id _     _      ) = id
nicerBookTitle		(Book _  title _      ) = title
nicerBookAuthors	(Book _  _     authors)	= authors

-- book review
-- synonyms
type CustomerID   = Integer
type CustomerName = String
type ReviewBody   = String

data BookReview = BookReview BookInfo CustomerID ReviewBody

-- credit card 
type CardHolder = String
type CardNumber = Integer
type Address    = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                 deriving Show

-- records
data Customer = Customer {
	  customerID      :: CustomerID 
	, customerName    :: CustomerName
	, customerAddress :: Address
} deriving Show

customer1 = Customer  1 "John Fourkiotis" ["55133", "Amazonon 6", "Kalamaria"]
customer2 = Customer {
	customerID = 1,
	customerName = "Katerina Fourkioti",
	customerAddress = ["55133", "Amazonon 6", "Kalamria"]
}

main = do
		putStrLn $ show customer1
		putStrLn $ show customer2
