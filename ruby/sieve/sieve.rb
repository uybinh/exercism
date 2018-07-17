class Sieve
  def initialize number
    @n = number
  end

  def primes
    sieves = Hash[(2..@n).map {|x| [x, true]}]
    sieves.each do |number, prime|
      break if number**2 > @n
      multiplier = 2
      until number*multiplier > @n do
        sieves[number*multiplier] = false
        multiplier += 1
      end
    end
    sieves.select {|key, value| key if value}.keys
  end
end

class BookKeeping
  VERSION = 1
end