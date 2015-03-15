require "rails_helper"

RSpec.feature "Unauthenticated user" do
  scenario "adds item to cart" do
    create(:item)
    visit "/menu"
    click_button("Add To Cart")
    within(".container-fluid") do
      click_on "View Cart"
    end
    expect(page).to have_content "Sushi"

    expect(page).to have_content "1"
  end

  #need to have test to automatically set quantity
  #unless we decide to allow user to initially specifiy quantity

  #if user adds item that already exists -> test that the quanity is increased and
  #there is not a redundant entry in db
end
