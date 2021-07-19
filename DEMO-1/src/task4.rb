=begin
#1

num = gets.to_i

def palindrome(num)
    rev = 0
    r = num
    while r != 0
        i = r%10
        rev = rev*10 + i
        r /= 10
    end
    if rev == num
        puts "#{num} Палиндром"
    else
        puts "Увы #{num} не Палиндром"
    end
end

palindrome(1111111)

#2
puts "Enter the number"
num=gets.chomp.to_i

temp=num
sum = 0

while num!=0  #implementation of while loop
    rem=num%10
    num=num/10
    sum=sum*10+rem
end

if(temp==sum)
    puts "The #{temp} is a palindrome"
else
    puts "The #{temp} is not a palindrome"
end

=end

=begin
Палиндром
Проверить является ли число или его часть палиндромом.
Например, число 1234437 не является палиндромом,
но является палиндромом его часть 3443. Числа меньшие,
чем 10 палиндромом не считать.

Входные параметры:
целое число
Выход:
извлеченный из числа палиндром либо 0, если извлечение не удалось.

Входные параметры: целое число > 9 до 1 000 000 000 000 000 000 000
Выход: целое число либо 0
Выход: один палиндром, наибольший, если два наибольших,
возвращаете первый попавшийся
=end

def palindrome(x)
    x == x.to_s.reverse.to_i
end
num = 1234437
arr_num = num.digits
arr_num.size
arr_num.each_cons(3){|x| p x}
 for i in arr_num.size..2 do arr_num.each_cons(3){|x| p x}
 end
arr_num.reverse
palindrome = []
arr_num.each do |x|
    if (arr_num.reverse.include?(x))
    print (x)
    end
end
