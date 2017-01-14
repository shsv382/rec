#!/usr/bin/ruby

def sort(mas)
	a = mas[0...mas.length/2]
	b = mas[mas.length/2...mas.length]

	sort(a) if a.length > 1
	sort(b) if b.length > 1

if a.length == 1 && b.length == 1
	c = []
	while c.length < mas.length
	if a[0].nil? || a[0] >= b[0]
		c.push(b.shift)
		c.push(a.shift) unless a[0].nil?
	elsif b[0].nil? || a[0] < b[0]
		c.push(a.shift)
		c.push(b.shift) unless b[0].nil?
	end
	puts c.inspect
	end
end

	return c
end


puts sort([4,7,1,4,2,3,6,9,7]).inspect

=begin
	
if a.length == 1 && b.length == 1
	c = []
	while c.length < mas.length
	if a[0].nil? || a[0] >= b[0]
		c.push(b.shift)
		c.push(a.shift) unless a[0].nil?
	elsif b[0].nil? || a[0] < b[0]
		c.push(a.shift)
		c.push(b.shift) unless b[0].nil?
	end
	end
end

=end