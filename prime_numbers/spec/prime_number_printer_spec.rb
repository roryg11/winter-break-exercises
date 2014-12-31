require "spec_helper"
require "prime_number_printer"

describe "#prime_number_printer(max)" do
  it "returns an array of prime numbers from the range" do

    expected = [1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29].reverse

    expect(prime_number_printer(29)).to eq(expected)
  end

end
