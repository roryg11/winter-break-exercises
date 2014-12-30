require "spec_helper"
require "palindrome_checker"

describe PalindromeChecker do
  it "can reverse text" do
    string_2 = PalindromeChecker.new

    expect(string_2.reversed("hello")).to eq("hello".reverse)
  end

  it "recognizes a palindrome" do
    string_2 = PalindromeChecker.new

    expect(string_2.palindrome("racecar")).to include("racecar is a palindrome")
  end

  it "recognizes when a string is not a palindrome" do
    string_2 = PalindromeChecker.new

    expect(string_2.palindrome("hello")).to include("hello is not a palindrome")
  end
end
