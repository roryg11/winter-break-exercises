num_range = (1..1337).to_a

num_range.delete_if {|num| num.even?}

puts num_range.to_s
