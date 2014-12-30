class PalindromeChecker

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

  def palindrome(string)
    if reversed(string) == string
      "#{string} is a palindrome"
    else
      "#{string} is not a palindrome"
    end
  end

  def run
    puts "Please enter a string:"
    string = gets.chomp
    puts palindrome(string)
  end
end

check = PalindromeChecker.new

check.run
