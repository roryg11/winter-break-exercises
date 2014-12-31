def prime_number_printer(max)
  num_range = (1..(max.to_i)).to_a.reverse

  #outer_index_tracker
  first_index = 0
  while first_index < (num_range.length - 1)
    #inner_index_tracker
    second_index = 0
    while second_index < (num_range.length - 1) 
        if num_range[first_index]%num_range[second_index] == 0 && num_range[first_index] != num_range[second_index]
          num_range.delete_at(first_index)
        end
      second_index += 1
    end
    first_index += 1
  end
  num_range
end
