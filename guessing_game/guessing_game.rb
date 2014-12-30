  puts "Welcome to angsty number guessing"
  puts "umm do you want to guess? put in a number already"
  rand_num = rand(1..100)
  guess_count = 0
while true
  guess = gets.chomp.to_i
  if guess > rand_num
    puts "ummm so the number is less than your #{guess}"
    guess_count +=1
    puts "Gross. Maybe you should guess again..."
  elsif guess < rand_num
    puts "uhhhhh I guess the number is greater than #{guess}... or whatever"
    guess_count +=1
    puts "Ew. I guess you should guess again... "
  elsif guess == rand_num
    puts "You got it... finally..."
    guess_count +=1
    break
  end
end

if guess_count >= 10
  puts "It took you #{guess_count} tries to get there... Ew. Do you know Justin Bieber?"
else
  puts "You got it in #{guess_count} tries... That's okay I guess. Maybe we can go to a One Direction concert"
end
