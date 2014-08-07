def myDrop[A](n: Int, xs: List[A]): List[A] = 
  if (n <= 0 || xs == Nil) xs else myDrop(n-1, xs.tail)

println(myDrop(4, List(1, 2, 3, 4, 5)))