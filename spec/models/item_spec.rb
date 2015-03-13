require "rails_helper"

RSpec.describe Item, type: :model do
  context "invalid attributes" do
    it "is invalid without a title" do
      item = Item.create
      expect(item).to_not be_valid
    end

    it "is invalid without a description" do
      item = build(:item, description: nil)
      expect(item).to_not be_valid
    end

  end
end