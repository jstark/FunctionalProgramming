def drop(n, xs):
	if n <= 0 or not xs:
		return xs
	else: return drop(n-1, xs[1:])

print(drop(4, [1, 2, 3, 4, 5]))