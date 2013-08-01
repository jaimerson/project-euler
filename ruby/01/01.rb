def answer
  result = 0
  [*1..999].map { |x| result+= x if x % 3 == 0 or x % 5 == 0 }
  result
end

puts answer()
