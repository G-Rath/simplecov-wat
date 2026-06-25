require_relative "../../math/add"

RSpec.describe "#add" do
  it "can add numbers" do
    expect(add(1, 2)).to eq 3
  end

  it "converts strings to numbers" do
    expect(add("1", 2)).to eq 3
    expect(add(1, "2")).to eq 3
  end

  it "raises on invalid arguments" do
    expect { add(nil, 1) }.to raise_error(ArgumentError)
    expect { add(1, []) }.to raise_error(ArgumentError)
  end
end
