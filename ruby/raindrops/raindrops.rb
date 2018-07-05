module Raindrops
  def self.convert num
    rain_drop = {
      "Pling" => (num % 3),
      "Plang" => (num % 5),
      "Plong" => (num % 7)
      }.map { |key, value| value == 0 ? key : "" }.join("")
    rain_drop.empty? ? num.to_s : rain_drop
  end
end

module BookKeeping
  VERSION = 3
end