class Fibonacci
  def self.sequence
    Enumerator.new do |f|
      f << 1
      f << 2
      
      two_ago, one_ago = [1, 2]

      while true
        n = two_ago + one_ago
        two_ago, one_ago = [one_ago, n]
        f << n
      end
    end
  end
end
# The 36th Fibonacci number (zero-indexing with 1, 2, ...) is 39088169, so we want to look at the first 37 

answer = Fibonacci.sequence.take(37).select {|n| n.even? }.inject(&:+)

puts answer
