class Squares
  def initialize(num)
    @num = num
  end

  def difference
    (sum_of_squares - square_of_sum).abs
  end

  def sum_of_squares(num = @num)
    return 1 if num < 2
    num*num + sum_of_squares(num - 1)
  end

  def square_of_sum(num = @num)
    sum_all_to(num)**2
  end

  private
  def sum_all_to(num)
    return 0 if num < 1
    num + sum_all_to(num - 1)
  end
end

module BookKeeping
  VERSION = 4
end