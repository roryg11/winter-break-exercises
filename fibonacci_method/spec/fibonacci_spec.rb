require 'spec_helper'
require 'fibonacci'

describe "#fibonacci" do
  it "prints out first 10 characters in the fibonacci sequence" do


    expect(fibonacci(10)).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34])
  end
  it "prints out first 100 characters in the fibonacci sequence" do




    expect(fibonacci(100)).to include(218922995834555169026)
  end
end
