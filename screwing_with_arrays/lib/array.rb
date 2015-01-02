class Array
  def say_hello
    "HEY THERE I'M AN ARRAY! SOMEONE FUCKED WITH MY CODE :("
  end

  def count_evens
    count = 0
    self.each do |num|
      if num.even?
        count += 1
      end
    end
    "HI FRIEND, I AM ARRAY.  I HAVE #{count} EVEN NUMBERS.  PRETTY AWESOME YES?  I LOVE YOU GOODBYE"
  end
end
