def safeSecond[A](xs: List[A]) = 
	if (xs == Nil) None 
	else 
		if (xs.tail == Nil) None else Some(xs.tail.head)

println(safeSecond(List(1, 2)))
println(safeSecond(List()))