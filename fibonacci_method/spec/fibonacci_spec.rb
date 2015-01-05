require 'spec_helper'
require 'fibonacci'

describe Fibonacci do
  it "prints out first 10 characters in the fibonacci sequence" do
    fib_string = Fibonacci.new(10)

    expect(fib_string.generate).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34])
  end

  it "prints out first 100 characters in the fibonacci sequence" do
    fib_string = Fibonacci.new(100)

    expect(fib_string.generate).to include(218922995834555169026)
  end
end
