#1 
puts("Введите свое имя: ")
name = gets.chomp()
puts("Ваше имя: " + name + "!")

#2 

puts("Введи свой год рождения: ")
year = gets
puts "Ваш возраст: " + (2021 - year.to_i).to_s

#3 

puts "Сторона квадрата: "
side = gets
puts(side.to_i * 4)

#4 
puts "Радиус окружности: "
radius = gets
puts "Площадь: " + (3.14 * (radius.to_i ** 2)).to_s

#5
puts "Расстояние от города А до города Б"
distance = gets.to_f
puts "Скорость км/ч"
speed = gets.to_f
puts "Время: " + (distance/speed).round().to_s + " часов"

#6
puts "Введите сумму в $"
dollar = gets
puts "Евро: " + (dollar.to_i * 0.84).to_s

#7
puts "Объем флешки в Гб: "
gigabyte = gets
gigabyte = gigabyte.to_f * 1024
result = gigabyte / 820
puts "Количество файлов: " + result.round().to_s

#8 - не работает!
puts "Сумма в кошельке: "
money = gets.to_i
puts "Цена шоколадки: "
prise = gets.to_i
puts "Какое кол-во шоколадок хотите купить?"
count = gets.to_i
while count != 0
    money -= price
    count -= 1
    end
puts "Остаток денег: "

#9
puts "Введите 3-х значное число: "
number = gets.reverse!
puts "Числа в обратном порядке: " + number

#10 - не сообразила как
