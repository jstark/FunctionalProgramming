# with a class
class Book:
	def __init__(self, isbn, title, authors):
		self.isbn = isbn
		self.title = title
		self.authors = authors

	def __str__(self):
		return ' '.join(['Book', str(self.isbn), self.title, str(self.authors)])

book = Book(9780135072455, 'Algebra of Programming', ['Richard Bird', 'Oege de Moor'])
print(book)

# with a named tuple, which is closer to the haskell way
import collections

Book2 = collections.namedtuple('Book', ['isbn', 'title', 'authors'])
book2 = Book2(9780135072455, 'Algebra of Programming', ['Richard Bird', 'Oege de Moor'])
print(book2)

# add book review object
class BookReview:
	def __init__(self, book_info, customer_id, review):
		self.book_info = book_info
		self.customer_id = customer_id
		self.review = review

	def __str__(self):
		return 'the book review ...'

# add billing info object
class BillingInfo:
	pass

class CreditCard(BillingInfo):
	def __init__(self, card_number, card_holder, address):
		self.card_number = card_number
		self.card_holder = card_holder
		self.address = address

	def __str__(self):
		return ' '.join([str(self.card_number), self.card_holder, str(self.address)])

class CashOnDelivery(BillingInfo):
	def __str__(self):
		return 'CashOnDelivery'

class Invoice(BillingInfo):
	def __init__(self, customer_id):
		self.customer_id = customer_id

	def __str__(self):
		return 'BillingInfo: ' + str(self.customer_id)

