require 'spec_helper'
require 'reverse_string'

describe ReverseString do
  it "takes in a string and returns a new one" do
    string_2 = ReverseString.new("Hello")

    expect(string_2.reversed.to eq("Hello".reverse)
  end
end
