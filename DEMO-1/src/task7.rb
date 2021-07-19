=begin УСЛОВИЕ: Ряд Фибоначчи для диапазона
Вывести все числа Фибоначчи, которые удовлетворяют переданному в функцию
ограничению: находятся в указанном диапазоне, либо имеют указанную длину.

Входные параметры: ассоциативный массив с ключами min и max, либо с ключем length
Выход: массив чисел

({ length => 2}) # [1, 1]
({ length => 1}) # [1]
({ length => 0}) # []
({ min => 4, max => 20}) # [5, 8, 13]
({ min => 3, max => 21}) # [3, 5, 8, 13, 21]
({ min => 21, max => 3}) # [3, 5, 8, 13, 21]
Числа Фибоначчи - 1, 1, 2, 3, 5, 8, 13, 21, 34
Length - количество чисел Фиб. для вывода

=end

def fib(n)

    series = [1, 1]

    if n.length == 1
        for i in 2..n[:len] - 1
            series << series[i - 2] + series[i - 1]
        end
        return series

    elsif n.length == 2
        n[:min], n[:max] = n[:max], n[:min] if n[:min] > n[:max]
        i = 2
        while series.last < n[:min]
            series << series[i - 2] + series[i - 1]
            i += 1
        end

        j = 2
        ser2 = series.last(2)

        while ser2.last < n[:max]
            ser2 << ser2[j - 2] + ser2[j - 1]
            j += 1
        end
        ser2.delete_at(0)
        return ser2
    end

    return 0
end

n = {:min => 9, :max => 20}
print fib(n)
