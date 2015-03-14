require "rails_helper"

RSpec.describe Order, type: :model do
  context '#add_item' do
    xit 'adds an item' do
      item = Item.create(title: 'sushi')
      order = Order.create
      order.add_item(item.id)
      expect(order.order_items.count).to eq(1)
      # expect {
      #   order.add_item(item.id)
      # }.to change(:order_items, :count).from(0).to(1)
      expect(order.order_items.first.item_id).to eq(item.id)
    end
  end


end