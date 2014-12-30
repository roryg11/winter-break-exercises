require 'ascii_art'

describe AsciiArt do
  it "gives us the expected pyramid" do
    art = AsciiArt.new

    expected =(
    "*
    ***
    *****
    *******
    *********")

    expect(art.pyramid).to eq(expected)
  end
end
