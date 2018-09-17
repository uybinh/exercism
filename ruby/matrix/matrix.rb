class Matrix
  attr_reader :rows, :columns

  def initialize matrix_string
    @rows = to_array matrix_string
    @columns = @rows.transpose
  end

  private

  def to_array string
    string.split(/\n/).map do |row|
      row.split(' ').map(&:to_i)
    end
  end

end