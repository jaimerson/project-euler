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
