class Prime
  def self.nth(number)
    raise ArgumentError, "The given number must be greater than 0" if number < 1
    first_prime = 2
    second_prime = 3
    primes = Array.new() << first_prime
    candidate = second_prime
    until primes.length >= number
      if primes.any? { |prime| (candidate % prime).zero? }
        candidate += 2
      else
        primes << candidate
      end
    end
    primes.last
  end
end

module BookKeeping
  VERSION = 1
end