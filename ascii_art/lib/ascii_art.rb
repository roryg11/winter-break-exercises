class AsciiArt
  def pyramid
    tree = ""
    row = 1
    while row < 6
      if row == 5
        tree = tree + "\n" + (" " + "*" * (row + (row - 1)))
        row +=1
      else
        tree = tree + "\n" + ((" " * (6 - row)) + "*" * (row + (row - 1)))
        row += 1
      end
    end
    tree
  end
end

# 1, * multiplied by n(1), 5 spaces
# 2, *** multiplied by n and then +1, 4 spaces
# 3, ***** multiplied by n and then +2, 3 spaces
# 4, ******* multiplied by n and then +3, 2 spaces
# 5, ********* multiplied by n and then +4, 1 space

# reverse for spaces
# * count + (count - 1)

art = AsciiArt.new

puts art.pyramid
