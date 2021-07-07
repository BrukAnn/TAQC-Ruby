=begin
Написать функцию,
которая получает url и выводит подробную информацию о нем.
Например: url “https://career.softserveinc.com/
en-us/learning-and-certification/formats-2/”,
информация
“протокол: https, домен: career.softserveinc.com,
путь: en-us/learning-and-certification/formats-2/”.
=end

#URI - это модуль, предоставляющий классы
# для работы с унифицированными идентификаторами ресурсов
require 'uri'

uri = URI("https://career.softserveinc.com/en-us/learning-and-certification/formats-2/")

uri.scheme    #=> порт
uri.host      #=> домен
uri.path      #=> путь



uri.to_s      #=> "https://career.softserveinc.com/en-us/learning-and-certification/formats-2/"

puts uri.scheme
puts uri.host
puts uri.path
