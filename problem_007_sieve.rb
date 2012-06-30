class Integer
  def divides?(n)
    n % self == 0
  end
end

primes = [2]
n = 2
while primes.count < 10_001
  n += 1
  primes << n unless primes.any? {|p| p.divides? n}
end

puts primes.last
