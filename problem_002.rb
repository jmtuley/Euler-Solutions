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

answer = Fibonacci.sequence.take_while{|f| f < 4_000_000}.select {|n| n.even? }.inject(&:+)

puts answer
