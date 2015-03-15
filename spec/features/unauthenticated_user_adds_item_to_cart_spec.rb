require "rails_helper"

RSpec.feature "Unauthenticated user" do
  scenario "adds item to cart" do
    create(:item)
    visit "/menu"
    click_button("Add To Cart")
    click_on "View Cart"
    puts current_path
    within("#item_title") do
      expect(page).to have_content "Sushi"
    end
  end

  #need to have test to automatically set quantity
  #unless we decide to allow user to initially specifiy quantity

  #if user adds item that already exists -> test that the quanity is increased and
  #there is not a redundant entry in db
end
