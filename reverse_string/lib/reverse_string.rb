class ReverseString
  def reversed(string)
    string_swap_num = (string.length)/2
    rev_string = string.split("")
    i = 0
    string_swap_num.times do
      rev_string[i], rev_string[0-(i + 1)] = rev_string[0   - (i+1)], rev_string[i]
      i+=1
    end
    rev_string.join
  end

  def run
    puts "Enter a string:"
    string = gets.chomp
    reversed(string)
  end
end

reverse_me = ReverseString.new

puts reverse_me.run
