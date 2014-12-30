class AsciiArt
  attr_reader :input, :output

  def initialize (input, output)
    @input = input
    @output = output
  end

  def puts(message)
    output.puts(message)
  end

  def gets
    input.gets
  end

  def pyramid(character, num_rows)
    tree = ""
    rows = 1
    while rows <= num_rows
      tree += "\n" + ((" " * (num_rows - rows)) + character * (rows + (rows - 1)))
      rows += 1
    end
    tree
  end

  def run
    puts("What character do you want to use?")
    character = gets.chomp
    puts("How many rows do you want to use?")
    num_rows = gets.chomp.to_i

    puts self.pyramid(character, num_rows)
  end
end

# art = AsciiArt.new
#
# art.run

# puts "What character do you  want to use?"
# character = gets.chomp
# puts "How many rows do you want to use?"
# num_rows = gets.chomp.to_i
#
# art = AsciiArt.new
# puts art.pyramid(character, num_rows)
