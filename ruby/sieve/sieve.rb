class Sieve
  def initialize number
    @number = number
  end

  def primes
    sieves = Hash[(2..@number).map {|x| [x, true]}]
    sieves.each do |number, prime|
      break if number**2 > @number
      multiplier = 2
      until number*multiplier > @number do
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