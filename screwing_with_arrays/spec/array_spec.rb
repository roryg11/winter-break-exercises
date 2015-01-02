require 'spec_helper'
require 'array'

describe Array do
  it "#say_hello" do
    num = [1,2, 3]

    expect(num.say_hello).to eq("HEY THERE I'M AN ARRAY! SOMEONE FUCKED WITH MY CODE :(")
  end

  it "#count_evens" do
    num = [2,5,9,15,22,99]

    expect(num.count_evens).to eq("HI FRIEND, I AM ARRAY.  I HAVE 2 EVEN NUMBERS.  PRETTY AWESOME YES?  I LOVE YOU GOODBYE")
  end
end
