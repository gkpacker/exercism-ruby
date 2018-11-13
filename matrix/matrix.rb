class Matrix
  attr_reader :rows, :columns

  def initialize(input)
    @input = input
    @rows = split_rows
    @columns = split_columns
  end

  private

  def split_rows
    @input.lines.map { |line| line.split.map(&:to_i) }
  end

  def split_columns
    rows.transpose
  end
end
