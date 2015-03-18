require "rails_helper"

RSpec.describe Order, type: :model do
  context "invalid attributes" do
    it "is invalid without any attributes" do
      order = Order.create
      expect(order).to_not be_valid
    end

    it "is invalid without a user_id" do
      order = Order.create(cart_items: "{'9'=>1}")
      expect(order).to_not be_valid
    end

    it "is invalid without cart_items" do
      order = Order.create(user_id: 1)
      expect(order).to_not be_valid
    end

    it "is given a status of ordered by default" do
      order = Order.create(user_id: 1, cart_items: "{'9'=>1}")
      expect(order.status).to eq("ordered")
    end
  end
end
