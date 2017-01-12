#!/usr/bin/ruby

def fibs(n)
	return 1 if n == 1
	return [1,1] if n == 2
	a = [1,1]
	for i in (3..n)
		a.push(a[i-3]+a[i-2])
	end
	a
end

def fibs_rec(n, a = 0, b = 1, result = [0])
	n > 1 ? fibs_rec(n - 1, b, a + b, result.push(b)) : result
end

print fibs_rec(14).inspect
puts