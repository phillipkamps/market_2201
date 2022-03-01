require "./lib/item"
require "./lib/vendor"
require "./lib/market"
require "pry"

RSpec.describe Market do
  market = Market.new("South Pearl Street Farmers Market")
  vendor1 = Vendor.new("Rocky Mountain Fresh")
  item1 = Item.new({name: "Peach", price: "$0.75"})
  item2 = Item.new({name: "Tomato", price: "$0.50"})
  item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
  item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})

  it "reads market name" do
    expect(market.name).to eq("South Pearl Street Farmers Market")
  end

  it "reads market vendors" do
    expect(market.vendors).to eq([])
  end
end
