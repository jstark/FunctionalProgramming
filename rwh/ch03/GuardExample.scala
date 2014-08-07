def sayHi(n: Int, m: String) = n match {
	case _ if n == 5 			=> "Oooooooooo ! You chose 5"
	case _ if n > 5 && n < 10 	=> "Excellent  ! You chose wisely"
	case _                      => m
}

println(sayHi(5, "hello"))
println(sayHi(9, "world"))
println(sayHi(0, "You lose"))
