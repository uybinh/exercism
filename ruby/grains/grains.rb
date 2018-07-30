class Grains
  def self.square(number)
    raise ArgumentError, "Number out of range" unless (1..64).include? number
    2**(number-1)
  end

  def self.total
    2**64 - 1
  end
end

module BookKeeping
  VERSION = 1
end