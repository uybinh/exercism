class String
  MAPPING = {
    1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
    2 => ['D', 'G'],
    3 => ['B', 'C', 'M', 'P'],
    4 => ['F', 'H', 'V', 'W', 'Y'],
    5 => ['K'],
    8 => ['J', 'X'],
    10 => ['Q', 'Z']
  }

  def point
    number = 0
    MAPPING.each do |key, value|
      if value.include? self.upcase
        number = key
        break
      end
    end
    number
  end
end

module Point
  def score string = @string
    return 0 if string.nil?
    string.split('').sum(&:point)
  end
end

class Scrabble
  extend Point
  include Point

  def initialize string
    @string = string
  end
end
