class TemperatureConverter
  attr_reader :temp

  def initialize(temp)
    @temp = temp
  end

  def to_celsius
    celsius = ((temp.to_f - 32) * 5)/9
    celsius.round(1)
  end

  def to_fahrenheit
    fahrenheit = ((temp.to_f * 9)/5) + 32
  end

end

puts "Type '1' to convert from Celsius to Fahrenheit\n OR type '2' to convert Fahrenheit to Celsius"

temp = gets.chomp

if temp == "1"
  puts "Enter Celsius Temperature"
  temp = gets.chomp.to_f
  celsius = TemperatureConverter.new(temp)
  puts "#{temp} degrees celsius is #{celsius.to_fahrenheit} degrees celsius"
elsif temp == "2"
  puts "Enter Fahrenheit Temperature"
  temp = gets.chomp.to_f
  fahrenheit = TemperatureConverter.new(temp)
  puts "#{temp} degrees fahrenheit is #{fahrenheit.to_celsius} degrees celsius"
else
  "Type '1' to convert from Celsius to Fahrenheit\n OR type '2' to convert Fahrenheit to Celsius"
end
