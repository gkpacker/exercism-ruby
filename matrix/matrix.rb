class Matrix
  attr_reader :rows, :columns

  def initialize(input)
    @input = input
    @rows = split_rows
    @columns = split_columns
  end

  private

  def split_rows
    @input.split(/\n/).map { |row| row.split.map(&:to_i) }
  end

  def split_columns
    (0..rows.first.size).map do |size|
      rows.map { |row| row[size] }
    end
  end
end
