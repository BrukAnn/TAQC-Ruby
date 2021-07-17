

def chessboard(l, w, s)



  arr = []
  for i in 0..l
    for j in 0..w
      if (i+j) % 2 == 0
        arr << (symbol)
      else
        arr << (' ')
      end
    end
  arr << ("\n")
end
return arr
end

def start (l, w, symbol)
  str = chessboard(l, w, symbol)
  return str.join
end

print start(5, 15, "*")
