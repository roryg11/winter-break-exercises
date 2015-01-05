require 'spec_helper'
require 'ascii_art_cli'

describe AsciiArt do
  it 'returns a triangle for an input of 6 rows' do
    art = AsciiArt.new

    expected =("
     *
    ***
   *****
  *******
 *********
***********")

    expect(art.pyramid("*", 6)).to eq(expected)
  end
end
