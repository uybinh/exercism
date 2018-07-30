class Grains
  def self.square(board_location)
    raise ArgumentError, "Number out of range" unless (1..64).include? board_location
    2**(board_location-1)
  end

  def self.total
    2**64 - 1
  end
end

module BookKeeping
  VERSION = 1
end