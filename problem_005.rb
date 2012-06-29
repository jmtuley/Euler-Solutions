require 'prime'
class Hash
  def merge_maximally(other)
    s = self.dup
    other.each do |key, value|
      if s.has_key? key
        s[key] = [s[key], value].max
      else
        s[key] = value
      end
    end

    s
  end
end

target = 20

prime_factorizations = (1..target).map {|n| Hash[Prime.prime_division n]}
lcm_factorization = prime_factorizations.inject(&:merge_maximally)
lcm = lcm_factorization.to_a.map{|b, e| b ** e}.inject(&:*)

answer = lcm
puts answer

