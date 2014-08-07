case class Book(val isbn: Long, val title: String, val authors: List[String])

val book = Book(9780135072455L, "Algebra of Programming", List("Richard Bird", "Oege de Moor"))
println(book)

// add book review
type CustomerID   = Long
type CustomerName = String
type ReviewBody   = String

case class BookReview(val book: Book, val customerID: CustomerID, val review: ReviewBody)
val review = BookReview(book, 12345, "A nice book!")
println(review)

// add credit card info
type CardHolder = String
type CardNumber = String
type Address = List[String]

trait BillingInfo
case class CreditCard(
	val cardNumber: CardNumber, 
	val cardHolder: CardHolder, 
	val address: Address) extends BillingInfo

object CashOnDelivery extends BillingInfo
case class Invoice(val customerID: CustomerID) extends BillingInfo

val billingInfo = CreditCard("0000-0000-0000-0000", "Me", List("A", "B"))
println(billingInfo)

case class Customer(val id: CustomerID, val name: CustomerName, val address: Address)