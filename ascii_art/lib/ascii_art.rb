class AsciiArt
  def pyramid
    tree = ""
    count = 1
    while count < 8
      tree = tree + (("*" * count) + "\n")
      count += 1
    end
    tree
  end
end

#how do you make a return --> \n
#how do you loop through something that doesn't exist?
#for every line you add two asterisks
#every line should be centered string.center
#
