require 'spec_helper'
require 'multiplication_table'

describe MultiplicationTable do
  it "#table generates a multiplication table as a nested array with user specs" do
    new_table = MultiplicationTable.new(5, 4)

    expected = [
      [1, 2, 3, 4],
      [2, 4, 6, 8],
      [3, 6, 9, 12],
      [4, 8, 12, 16],
      [5, 10, 15, 20]
    ]
    expect(new_table.table).to eq(expected)
  end


end
