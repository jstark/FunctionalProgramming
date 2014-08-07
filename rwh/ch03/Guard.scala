def fromOption[A](default: A, wrapped: Option[A]) = wrapped match {
	case None 		=> default
	case Some(v) 	=> v
}

println(fromOption(1, Some(2)))
println(fromOption(1, None))