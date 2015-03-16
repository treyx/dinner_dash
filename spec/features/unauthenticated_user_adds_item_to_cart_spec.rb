require "rails_helper"

RSpec.feature "Unauthenticated user" do
  context "adds item to cart" do
    scenario "and sees the item title" do
      create(:item)
      visit "/menu"
      click_button("Add To Cart")
      click_on "View Cart"
      within("#item_title") do
        expect(page).to have_content "Sushi"
      end
    end

    scenario "and sees the item quantity" do
      create(:item)
      visit "/menu"
      click_button("Add To Cart")
      click_on "View Cart"
      within("#item_quantity") do
        expect(page).to have_content 1
      end
    end

    context "removes item from cart" do
      scenario "and the item is removed" do
        create(:item)
        visit "/menu"
        click_button("Add To Cart")
        click_on "View Cart"
        click_link_or_button("Remove From Cart")
        expect(page).to_not have_content "Sushi"
      end
    end

    context "can change quantity of item in cart" do
      scenario "the item's quantity can be increased by one" do
        create(:item)
        visit "/menu"
        click_button("Add To Cart")
        click_on "View Cart"
        within("#item_quantity") do
          expect(page).to have_content 1
        end
        click_link_or_button("+1")
        within("#item_quantity") do
          expect(page).to have_content 2
        end
      end
    end

  end

  #if user adds item that already exists ->
  #test that the quanity is increased and
  #there is not a redundant entry in db
end
