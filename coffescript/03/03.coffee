answer = ->
  number = 13195
  divisor = 2
  primeDivisors = []

  while number > 1
    if divisor % 2 is 0
      if number % divisor is 0
        number = number / divisor
      divisor++
    else if divisor % 3 is 0
      if number % divisor is 0
        number = number / divisor
      divisor++
    else if divisor % 5 is 0
      if number % divisor is 0
        number = number / divisor
      divisor++
    else if number % divisor is 0
      number = number / divisor
      divisor++
    primeDivisors.push(divisor)
  console.log number, divisor

console.log answer()
