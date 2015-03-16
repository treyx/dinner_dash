require "rails_helper"

RSpec.describe Cart, type: :model do
  context "an item is added to the cart" do
    it "with valid attributes" do
      create(:item)
      cart = Cart.new(nil)
      cart.add_item(1)
      expect(cart.cart_items.count).to eq(1)
      item2 = Item.create
      cart.add_item(item2)
      expect(cart.cart_items.count).to eq(2)
    end
  end
end
