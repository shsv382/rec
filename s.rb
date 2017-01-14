#!/usr/bin/ruby

def sort(mas)
	a = mas[0...mas.length/2]
	b = mas[mas.length/2...mas.length]
	if a.length == 1 && b.length == 1
		c = []
		if a[0] >= b[0]
			b.push(b.shift)
			a.push(a.shift)
		else
			a.push(a.shift)
			b.push(b.shift)
		end
		return c
	elsif a.length == 1 && b.length > 1
		sort(b)
	else
		sort(a)
		sort(b)
	end
end

puts sort([4,7,1,4,2,3,6,9,7])