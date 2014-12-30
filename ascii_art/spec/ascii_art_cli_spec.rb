require 'ascii_art_cli'

describe AsciiArt do
  let(:io_input)  { StringIO.new("") }
  let(:io_output) { StringIO.new("") }

  let(:app)    { AsciiArt.new(io_input, io_output) }
  let(:output) { io_output.string }

  it "asks the user what character they would like to use" do
    app.run

    expect(output).to include("What character do you want to use?")
  end
  it "asks the user how many rows they would like to use"
  it "outputs the appropriate triangle according to user specifications"
end
