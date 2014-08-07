case class Book(val isbn: Long, val title: String, val authors: List[String])

val book = Book(9780135072455L, "Algebra of Programming", List("Richard Bird", "Oege de Moor"))
println(book)