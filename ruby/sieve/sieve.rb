class Sieve
  def initialize limit
    @limit = limit
  end

  def primes
    sieves = Array(2..@limit)
    sieves.each do |number|
      break if number**2 > @limit
      multiplier = 2
      until number*multiplier > @limit do
        sieves.delete(number*multiplier)
        multiplier += 1
      end
    end
    sieves
  end
end

class BookKeeping
  VERSION = 1
end