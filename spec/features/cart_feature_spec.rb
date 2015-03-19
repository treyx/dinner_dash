require "rails_helper"

RSpec.feature "Unauthenticated user" do
  scenario "adds item to cart" do
    item = Item.create(title: "Sushi",
                       description: "spicy tuna",
                       price: 2)
    item.save
    visit "/menu"
    click_on "Add To Cart"
    click_on 'View Cart'
    expect(page).to have_content 'Sushi'
    expect(page).to have_content '1'
  end
end
