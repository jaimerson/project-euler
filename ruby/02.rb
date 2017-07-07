# Each new term in the Fibonacci sequence is generated
# by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose
# values do not exceed four million,
# find the sum of the even-valued terms.
class Fibonacci
  def at(n)
    Integer((PHI ** n - PSI ** n)/(PHI - PSI))
  end

  private

  PHI = (1 + Math.sqrt(5))/2.0
  PSI = 1 - PHI
end

result = 0
fib = Fibonacci.new

(0..Float::INFINITY).lazy.each do |n|
  number = fib.at(n)
  break if number > 4_000_000
  puts "#{n} -> #{number}"
  result += number if number.even?
end

puts "result is:\n#{result}"
