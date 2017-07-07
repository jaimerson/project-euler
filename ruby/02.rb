# Each new term in the Fibonacci sequence is generated
# by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose
# values do not exceed four million,
# find the sum of the even-valued terms.
def fibonacci (first=0, second=1, range=10)
  num = first
  proximo = 0
  arr = []

  while proximo <= range do
    if num <= 1
      proximo = num
    else
      proximo = first + second
      first = second
      second = proximo
    end
    arr.push(proximo)
    num += 1
  end
  arr
end

puts fibonacci(1, 2, 10)
