require_relative "../../math/math3"

RSpec.describe "#add3" do
  it "can add numbers" do
    expect(add3(1, 1, 1)).to eq 3
  end

  it "converts strings to numbers" do
    expect(add3("1", 1, 1)).to eq 3
    expect(add3(1, "1", 1)).to eq 3
    expect(add3(1, 1, "1")).to eq 3
  end

  it "raises on invalid arguments" do
    expect { add3(nil, 1, 1) }.to raise_error(ArgumentError)
    expect { add3(1, [], 1) }.to raise_error(ArgumentError)
    expect { add3(1, 1, {}) }.to raise_error(ArgumentError)
  end
end

RSpec.describe "#subtract3" do
  it "can subtract numbers" do
    expect(subtract3(1, 1, 1)).to eq -1
  end

  it "converts strings to numbers" do
    expect(subtract3("1", 1, 1)).to eq -1
    expect(subtract3(1, "1", 1)).to eq -1
    expect(subtract3(1, 1, "1")).to eq -1
  end

  it "raises on invalid arguments" do
    expect { subtract3(nil, 1, 1) }.to raise_error(ArgumentError)
    expect { subtract3(1, [], 1) }.to raise_error(ArgumentError)
    expect { subtract3(1, 1, {}) }.to raise_error(ArgumentError)
  end
end
