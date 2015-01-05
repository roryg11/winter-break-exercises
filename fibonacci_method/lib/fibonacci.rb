class Fibonacci
  attr_accessor :array, :length

  def initialize(length)
    @length = length.to_i
    @array = [0, 1]
  end

  def generate
    while array.length < length
      array.push(array[-2] + array[-1])
    end
    array
  end

end
