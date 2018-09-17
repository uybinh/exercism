class Luhn
  class << self
    def valid? credit_card
      return false unless digits? credit_card
      checksum(sum_all(prepare(credit_card)))
    end

    private

    def digits? string
      return false if string.strip.length < 2
      return false if string.index /[^\d ]/
      true
    end

    def prepare credit_card
      digits = credit_card.gsub(" ", "").chars.reverse
      digits.map!(&:to_i)
    end

    def double_even_digit digit, index
      if index.odd?
        digit*2 > 9 ? digit*2 - 9 : digit*2
      else digit
      end
    end

    def sum_all digits
      digits.each_with_index.sum do |digit, index|
        double_even_digit(digit, index)
      end
    end

    def checksum total
      total % 10 == 0
    end
  end
end