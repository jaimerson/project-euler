fibonacci = (first=0, second=1, range=34) ->
  num = first
  arr = []
  while num <= range
    if num <= 1
      next = num
    else
      next = first + second
      first = second
      second = next
    arr.push(next)
    num = next

  return arr

answer = ->
  result = 0
  for number in fibonacci(1, 1, 4000000)
    result += number if number % 2 is 0
  return result

console.log answer()