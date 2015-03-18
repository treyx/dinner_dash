require "rails_helper"

RSpec.feature "A user" do
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

    scenario "and sees the item price" do
      create(:item)
      visit "/menu"
      click_button("Add To Cart")
      click_on "View Cart"
      within("#item_price") do
        expect(page).to have_content "$11.00"
      end
    end
  end

  context "adds existing item to the cart" do
    scenario "and the item quantity is increased" do
      create(:item)
      visit "/menu"
      click_button("Add To Cart")
      click_on "View Cart"
      within("#item_quantity") do
        expect(page).to have_content 1
      end
      visit "/menu"
      click_button("Add To Cart")
      click_on "View Cart"
      within("#item_quantity") do
        expect(page).to have_content 2
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

      scenario "the item's quantity can be decreased by one" do
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
        click_link_or_button("-1")
        within("#item_quantity") do
          expect(page).to have_content 1
        end
      end

      scenario "the item will be deleted if the quantity is decreased to 0" do
        create(:item)
        visit "/menu"
        click_button("Add To Cart")
        click_on "View Cart"
        within("#item_quantity") do
          expect(page).to have_content 1
        end
        expect(page).to have_content "Sushi"
        click_link_or_button("-1")
        expect(page).to_not have_content "Sushi"
      end
    end
    context "can submit an order" do
      xscenario "with items in the cart" do
        create(:item)
        visit "/menu"
        click_button("Add To Cart")
        click_on "View Cart"
        within("#item_quantity") do
          expect(page).to have_content 1
        end
        click_link_or_button("Submit Order")
        expect(page).to have_content("Order Submitted, Thank You!")
      end
    end
  end
end
