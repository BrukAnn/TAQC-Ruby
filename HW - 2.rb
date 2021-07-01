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



#HW - 3 - ?
#Task 1: Sum of Minimums!
a = [6,42,345,79,1]
puts a.compact.inject(:+)

#Task 2: Two Oldest Ages

def two_oldest_ages(ages)
  ages.sort[-1..100]
  if ages >100
    puts "Возраст не должен привышать 100 лет"
  end

end
puts "Введите возраст:"
ages = gets
result = two_oldest_ages
puts ("Даты: " + result)
