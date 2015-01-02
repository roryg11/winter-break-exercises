class MultiplicationTable
  attr_reader :rows, :columns, :table

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
    line_width = 40
    table_header = table[0]

    puts "Multiplication Table: "
    print "   "

    table_header.each do |num|
        print num.to_s.ljust(line_width/(table_header.length))
    end

    print "\n\n"

    @table.each do |row|
      print "#{row[0]}| "
      row.each do |num|
        print num.to_s.ljust(line_width/(row.length))
      end
      print "\n"
    end
  end
end

my_table = MultiplicationTable.new(9, 9)

my_table.terminal_output
