# Problem 1
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

class Integer
	def divides?(n)
		(n % self) == 0
	end
end

class ProblemOne

	def self.sum_multiples(multiples_of, max)
		(1...max).select {|n| multiple_of_any?(multiples_of, n)}.reduce(:+)
	end

protected

	def self.multiple_of_any?(multiples_of, n)
		multiples_of.each do |m|
			return true if m.divides? n
		end
		return false
	end
end
