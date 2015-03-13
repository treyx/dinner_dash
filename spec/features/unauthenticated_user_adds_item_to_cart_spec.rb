require "rails_helper"

RSpec.feature "Unauthenticated user" do
  xscenario "adds item to cart" do
    create(:item)
    visit "/menu"
    click_button("Add To Cart")

    click_on "View Cart"
    expect(page).to have_content "Sushi"
    expect(page).to have_content "1"
  end
end
