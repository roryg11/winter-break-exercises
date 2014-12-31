def fibonacci(length)
  array_length = length.to_i
  new_array = [0, 1]
  start = 0

  while new_array.length < array_length
    new_array.push(new_array[-2] + new_array[-1])
  end

  new_array
end
