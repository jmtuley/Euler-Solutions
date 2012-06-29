class Integer
  def divides?(n)
    n % self == 0
  end

  def factors
    (2...self).select {|n| n.divides? self }
  end

  def factor_pairs
    (2..Math.sqrt(self)).select {|n| n.divides? self}.map{|n| [n, self/n]}
  end

  def palindromic?
    s = self.to_s
    l = s.length
    (0..l / 2).each do |i|
      return false if s[i] != s[l - i - 1]
    end

    true
  end
end

max_possible = 999 * 999

palindromes = Enumerator.new do |n|
  m = max_possible
  while m > 0
    m -= 1
    n << m if m.palindromic?
  end
end

ps = palindromes.take_while do |p|
  pairs = p.factor_pairs
  !pairs.any? {|pair| pair.first.between?(100,999) && pair.last.between?(100,999)}
end

answer = palindromes.take(ps.count+1).last
puts answer
