sum = 1000

# Simplify system {a**2 + b**2 == c**2, a + b + c == sum} to get
#
# 0 = sum**2 = 2*sum*a - 2*sum*b == 2*a*b
# 
# Solve for b to get
#
# b = (sum**2 - 2*sum*a) / (2*sum - 2*a)
#
max = ((sum**2 - 2*sum*1) / (2*sum - 2)).to_i

as_and_bs = (1..max).select {|x| (sum**2 - 2*sum*x) % (2*sum - 2*x) == 0}.map {|a| [a, (sum**2 - 2*sum*a) / (2*sum - 2*a)].sort}.uniq

unless as_and_bs.empty?
  as_and_bs_and_cs = as_and_bs.map{|a,b| [a, b, sum - a - b]}
  products = as_and_bs_and_cs.map{|triple| [triple, triple.inject(&:*)] }
end

puts products
