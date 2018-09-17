require 'minitest/autorun'
require_relative 'luhn'

# Common test data version: 1.0.0 c826372
class LuhnTest < Minitest::Test
  def test_single_digit_strings_can_not_be_valid
    refute Luhn.valid?("1")
  end

  def test_a_single_zero_is_invalid
    refute Luhn.valid?("0")
  end

  def test_a_simple_valid_sin_that_remains_valid_if_reversed
    assert Luhn.valid?("059")
  end

  def test_a_simple_valid_sin_that_becomes_invalid_if_reversed
    assert Luhn.valid?("59")
  end

  def test_a_valid_canadian_sin
    assert Luhn.valid?("055 444 285")
  end

  def test_invalid_canadian_sin
    refute Luhn.valid?("055 444 286")
  end

  def test_invalid_credit_card
    refute Luhn.valid?("8273 1232 7352 0569")
  end

  def test_valid_strings_with_a_non_digit_included_become_invalid
    refute Luhn.valid?("055a 444 285")
  end

  def test_valid_strings_with_punctuation_included_become_invalid
    refute Luhn.valid?("055-444-285")
  end

  def test_valid_strings_with_symbols_included_become_invalid
    refute Luhn.valid?("055£ 444$ 285")
  end

  def test_single_zero_with_space_is_invalid
    refute Luhn.valid?(" 0")
  end

  def test_more_than_a_single_zero_is_valid
    assert Luhn.valid?("0000 0")
  end

  def test_input_digit_9_is_correctly_converted_to_output_digit_9
    assert Luhn.valid?("091")
  end

  def test_can_not_use_private_class_method
    assert_raises NoMethodError do
      Luhn.digits?("091")
      Luhn.checksum([1,2,3])
      Luhn.prepare("055 444 285")
    end
  end
end
