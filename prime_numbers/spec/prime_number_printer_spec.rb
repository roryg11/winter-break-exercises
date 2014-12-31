require "spec_helper"
require "prime_number_printer"

describe "#prime_number_printer(max)" do
  it "returns an array of numbers that is a range from 1 to 'max'" do
    expect(prime_number_printer(29)).to eq((1..29).to_a)
  end

end
