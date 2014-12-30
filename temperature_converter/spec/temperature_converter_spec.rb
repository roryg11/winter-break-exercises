require 'spec_helper'
require 'temperature_converter'

describe TemperatureConverter do
  it "converts the temperature to Celsius" do

    converter = TemperatureConverter.new(50)

  expect(converter.to_celsius).to eq(10)
  end

  it "converts the temperature to a float number in Celsius" do
    converter = TemperatureConverter.new(70)

    expect(converter.to_celsius).to eq(21.1)
  end
  it "converts the temperature to fahrenheit" do
    converter = TemperatureConverter.new(30)

    expect(converter.to_fahrenheit).to eq(86)
  end
  it "converts the temperature to a float number in fahrenheit" do
    converter  = TemperatureConverter.new(38)

    expect(converter.to_fahrenheit).to eq(100.4)
  end
end
