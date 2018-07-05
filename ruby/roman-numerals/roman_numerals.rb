class Integer
  ROMAN_NUM = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  def to_roman
    number = self
    roman_string = ROMAN_NUM.reduce("") do |roman_string, (roman, num)|
      while number >= num do
        roman_string << roman
        number -= num
      end
      roman_string
    end

  end


end

module BookKeeping
  VERSION = 2
end