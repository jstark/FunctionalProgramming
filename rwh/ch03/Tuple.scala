def third[A, B, C](t: (A, B, C)) = t._3

val t1 = (1, 2.2, "hello world")
println(third(t1))

def complicated[A, B, C, D](t: (A, B, List[C], D)) = t match  {
	case (true, a, x::xs, 5) => (a, xs)
}

val t2 = (true, "hello", List(1, 2, 3, 4), 5)
println(complicated(t2))