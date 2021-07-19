def tickets(min, max)

    return  {:status => "failed", :reason => "Введите целое число"} if min.class != Integer or max.class != Integer
    return  {:status => "failed", :reason => "Вводимое число должно быть целым и шестизначным"} if min < 0 or min > 999999 or max < 0 or max > 999999

    max, min = min, max if min > max
      reply = {
          :winner => '',
          :lucky => [111, 25]
      }

      for num in min..max
          arr = num.digits.concat([0,0,0,0,0]).slice(0, 6)

          fnum = arr.slice(0..2)
          snum = arr.slice(3..5)

          evens = []
          odds = []

          arr.each do |n|
              evens << n if n.even?
              odds << n if n.odd?
          end

          reply[:lucky][0] += 1 if  fnum.sum == snum.sum
          reply[:lucky][1] += 1 if  evens.sum == odds.sum
      end

      if reply[:lucky][0] > reply[:lucky][1]
          reply[:winner] = 1
      elsif reply[:lucky][0] < reply[:lucky][1]
          reply[:winner] = 2
      else
          reply[:winner] = 'both'
      end

      return  reply
  end

#print tickets(0, 0)
