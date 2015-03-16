require "rails_helper"

RSpec.feature "Unauthenticated user browses items" do

  context "unauthenticated user" do
    scenario "can browse the items" do
      create(:item)
      visit "/menu"
      expect(current_path).to eq(menu_path)
      expect(page).to have_content("Sushi")
    end

    scenario "can browse items in each category" do
      Category.create(id: 1, title: "appetizers")
      create(:item)

      visit "/categories/1"
      expect(page).to have_content("Sushi")

      Category.create(id: 2, title: "sashimi")
      create(:item, title: "Hamachi", category_id: 2)

      visit "/categories/2"
      expect(page).to have_content("Hamachi")
      expect(page).to_not have_content("Sushi")
    end
  end


end

# Unauthenticated users are NOT allowed to:
#
#     View another user’s private data (such as current order, etc.)
#     Checkout (until they log in)
#     View the administrator screens or use administrator functionality
#     Make themselves an administrator
