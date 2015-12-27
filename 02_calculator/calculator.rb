def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(*nums)
	a = 0
	nums.each {|num| a += num}
	a
end

def multiply(*b)
	c = 1
	b.each {|n| c *= n}
	c
end

def power(a, b)
	a ** b
end

def factorial(n)
	if n == 0
		a = 0
	else
		nums = (1..n).to_a
		a = 1
		nums.each {|num| a *= num}
		a
	end
end
factorial(10)