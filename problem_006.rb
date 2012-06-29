def diff(n)
  ( (1..n).inject(&:+) ** 2 ) - ( (1..n).map{|n| n ** 2}.inject(&:+) )
end

answer = diff(100)
puts answer
