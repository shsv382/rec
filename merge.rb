#!/usr/bin/ruby

def sort(mas, a = mas[0...mas.length/2], b = mas[mas.length/2...mas.length])

	if mas.length == 1
		return mas
	elsif mas.length == 2 
		if mas[0] <= mas[1]
			return mas
		else
			return [mas[1], mas[0]]
		end
	else
		a = sort(a)
		b = sort(b)
	end
		c = []
		while c.length < mas.length
		if a[0].nil? || (!(b[0].nil?) && a[0] >= b[0])
			c.push(b.shift)
		#	c.push(a.shift) unless a[0].nil?
		elsif b[0].nil? || (!(a[0].nil?) && a[0] < b[0])
			c.push(a.shift)
		#	c.push(b.shift) unless b[0].nil?
		end
		end
		return c

end


puts sort([45,7,12,7,3,6,77,55,33,5]).inspect