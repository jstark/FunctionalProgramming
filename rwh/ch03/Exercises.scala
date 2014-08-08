// ex.01, ex.02
def length[A](ls: List[A]): Int = ls match {
	case Nil   => 0
	case x::xs => 1 + length(xs)
}

println(length(List(1, 2, 3)))

// ex.03
def mean(numbers: List[Double]) = numbers.sum / numbers.size

println(mean(List(1, 2, 3)))

// ex.04
def makePalindrome[A](ls: List[A]) = ls ++ ls.reverse

println(makePalindrome(List("a", "b")))

// ex.05
def isPalindrome[A](ls: List[A]) = {
	def check(rev: List[A], ls1: List[A], rest: List[A]): Boolean = {
		rest match {
			case r1::r2::rs => check(ls1.head :: rev, ls1.tail, rs)
			case List(r)    => rev == ls1.tail
			case Nil        => rev == ls1
		}
	}
	check(Nil, ls, ls)
}

println(isPalindrome(List(1, 2, 3)))
println(isPalindrome(List(1, 2, 1)))
println(isPalindrome(List(1, 1)))

// ex.06
def sortListsOfLists[A](lss: List[List[A]]) = lss sortBy { _.size }

println(sortListsOfLists(List(List(1, 2), List(5), List(1, 2, 3), List())))

// ex.07, ex.08
def intersperse[A](delim: A, ls: List[List[A]]): List[A] = ls match {
	case Nil 	=> Nil
	case List(e)=> e
	case x::xs  => x ++ List(delim) ++ intersperse(delim, xs)
}

println(intersperse(0, List(List(1), List(2), List(3, 4))))
println(intersperse(0, List(List(1))))
println(intersperse(0, List()))