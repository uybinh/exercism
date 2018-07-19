class Grains
  def self.square(num)
    raise ArgumentError unless (1..64).include? num
    2**(num-1)
  end

  def self.total
    (1..64).each.map{ |x| Grains.square(x) }.reduce(&:+)
  end
end

module BookKeeping
  VERSION = 1
end