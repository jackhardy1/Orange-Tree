require "orange_tree"

describe Orange_tree do
  let(:orange_tree) {Orange_tree.new}

it "Tree should start with 50 oranges" do
  expect(orange_tree.orange_count).to eq 50
end

it "Tree should be 1 metre high at start" do
  orange_tree.height == 1
end

describe "#pick_an_orange" do
it "pick_an_orange reduces orange_count by 1" do
  expect{orange_tree.pick_an_orange}.to change{orange_tree.orange_count}.by(-1)
end
end

describe "#water" do
  it "water the tree adds one orange" do
expect{orange_tree.water}.to change{orange_tree.orange_count}.by(1)
  end
end

describe "#one_year_passes" do
  it "When one_year_passes is called, 2 metres is added to height" do
    expect{orange_tree.one_year_passes}.to change{orange_tree.height}.by(2)
  end
  it "when one_year_passes is called, orange_count increases by 20" do
    expect{orange_tree.one_year_passes}.to change{orange_tree.orange_count}.by(20)
  end
end
end
