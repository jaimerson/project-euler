answer = ->
  result = 0
  for num in [1..999]
    result += num if num % 3 is 0 or num % 5 is 0
  return result

window.onload = ->
  document.body.innerHTML = '<h1>' + answer() + '</h1>'
