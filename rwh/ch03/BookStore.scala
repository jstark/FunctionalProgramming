case class Book(val isbn: Long, val title: String, val authors: List[String])

val book = Book(9780135072455L, "Algebra of Programming", List("Richard Bird", "Oege de Moor"))
println(book)

// add book review
type CustomerID = Long
type ReviewBody = String

case class BookReview(val book: Book, val customerID: CustomerID, val review: ReviewBody)
val review = BookReview(book, 12345, "A nice book!")
println(review)