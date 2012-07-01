require 'prime'

answer = Prime.take_while{|p| p < 2_000_000}.inject(&:+)

puts answer
