cars = [
    {
        :year => 2020,
        "name" => "Skoda",
        "model" => "Karoq",
        :mileage => 10000,
        :color => "blue"
    },
    {
        :year => 2008,
        "name" => "Kia",
        "model" => "Ceed",
        :mileage => 16000,
        :color => "blue"
    },
    {
        :year => 2013,
        "name" => "Kia",
        "model" => "Soul",
        :mileage => 150000,
        :color => "white"
    },
    {
        :year => 1988,
        "name" => "Peugeot",
        "model" => "405",
        :mileage => 320000,
        :color => "blue"
    },
    {
        :year => 2017,
        "name" => "Nissan",
        "model" => "Quashkai",
        :mileage => 45000,
        :color => "violet"
    },
    {
        :year => 1972,
        "name" => "ВАЗ",
        "model" => "2103",
        :mileage => 480000,
        :color => "dark red"
    },
    {
        :year => 2002,
        "name" => "Nissan",
        "model" => "X-Trail",
        :mileage => 213000,
        :color => "green"
    }
]


def mediumDist carr
    y = (Time.now).year
    carr.each { |car| car["md"] = car[:mileage] / (y - car[:year]) }

    return carr
end

puts mediumDist cars
