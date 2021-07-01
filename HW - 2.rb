#5
=begin
решение не верное
как сделать?
не понимаю
=end

def short_word(sentence)
  short = sentence.split(" ")
  short.sort_by!(&:length)
  p short[0]
end

short_word("lets talk about javascript the best language")

#6
