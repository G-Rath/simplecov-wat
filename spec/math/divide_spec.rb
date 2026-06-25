require_relative "../../math/divide"

RSpec.describe "#divide" do
  it "can divide numbers" do
    expect(divide(10, 5)).to eq 2
  end

  it "converts strings to numbers" do
    expect(divide("10", 5)).to eq 2
    expect(divide(10, "5")).to eq 2
  end

  it "raises on invalid arguments" do
    expect { divide(nil, 1) }.to raise_error(ArgumentError)
    expect { divide(1, []) }.to raise_error(ArgumentError)
  end
end
