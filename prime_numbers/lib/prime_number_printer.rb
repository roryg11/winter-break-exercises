def prime_number_printer(max)
  num_range = (1..(max.to_i)).to_a.reverse
  not_prime = []
  prime = []
  first_index = 0
  while first_index < (num_range.length - 1)
    second_index = 0
    while second_index < (num_range.length - 1)
        if num_range[first_index]%num_range[second_index] == 0 && num_range[first_index] != num_range[second_index] && num_range[second_index] != 1
          not_prime.push(num_range[first_index])
        else
          prime.push(num_range[first_index])
        end
      second_index += 1
    end
    first_index += 1
  end
  num_range.delete_if {|x| not_prime.include?(x)}
end

# reverse array so that you are only comparing the number with smaller numbers
# keep track of the index of the index numbers
# first_index keeps track of the index of your first number
# second_index keeps track of the index of the numbers you compare it to
# look for a remainder to know if your number is divisible by the number it is compared to
# && statement is for when it is compared against itself
