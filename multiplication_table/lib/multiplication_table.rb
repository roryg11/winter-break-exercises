class MultiplicationTable
  attr_reader :rows, :columns

  def initialize(rows, columns)
    @rows = (1..(rows.to_i)).to_a
    @columns = (1..(columns.to_i)).to_a
    @table = []
  end

  def table
    @rows.each do |row|
      row_number = []
      @columns.each do |col|
        row_number.push(row * col)
      end
      @table.push(row_number)
    end
    @table
  end

  def terminal_output


  end


end
