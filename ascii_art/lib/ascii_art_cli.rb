class AsciiArt
  def pyramid(character, num_rows)
    tree = ""
    rows = 1
    while rows <= num_rows
      tree += "\n" + ((" " * (num_rows - rows)) + character * (rows + (rows - 1)))
      rows += 1
    end
    tree
  end
end

puts "What character do you  want to use?"
character = gets.chomp
puts "How many rows do you want to use?"
num_rows = gets.chomp.to_i

art = AsciiArt.new
puts art.pyramid(character, num_rows)
