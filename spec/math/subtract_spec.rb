require_relative "../../math/subtract"

RSpec.describe "#subtract" do
  it "can subtract numbers" do
    expect(subtract(1, 2)).to eq -1
  end

  it "converts strings to numbers" do
    expect(subtract("1", 2)).to eq -1
    expect(subtract(1, "2")).to eq -1
  end

  it "raises on invalid arguments" do
    expect { subtract(nil, 1) }.to raise_error(ArgumentError)
    expect { subtract(1, []) }.to raise_error(ArgumentError)
  end
end
