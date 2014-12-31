require "spec_helper"
require "prime_number_printer"

describe "#prime_number_printer(max)" do
  it "returns an array of prime numbers from a small range" do

    expected = [1, 2, 3, 5, 7].reverse

    expect(prime_number_printer(10)).to eq(expected)
  end

  it "returns and array of prime numbers from an array of 1 through 29" do
    expected = [29, 23, 19, 17, 13, 11, 7, 5, 3, 2, 1]

    expect(prime_number_printer(29)).to eq(expected)
  end

end
