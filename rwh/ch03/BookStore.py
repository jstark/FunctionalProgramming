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