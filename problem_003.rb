require 'prime'

# need the first 62113 to reach (but not exceed) sqrt 600851475143

target = 600851475143
primes = Prime.take_while {|p| p < Math.sqrt(target) }

class Integer
  def divides?(n)
    n % self == 0
  end
end

factors = primes.select {|p| p.divides? target}

answer = factors.last
puts answer
