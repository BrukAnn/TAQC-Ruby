def square(num, a)
  return  {:status => 'failed', :reason => "Введите целое число"} if num.class != Integer or a.class != Integer

  mass = []
  x = Math.sqrt(a).ceil

  if x > 0
    x = x
  else
    x = (x + 1).round
  end

  for i in x..x + num - 1
    mass.push(i)
  end
  return mass
end

# print square(7, 5)
