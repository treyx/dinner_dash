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
      appetizers = Category.create(id: 1, title: "appetizers", description: "category")
      item = create(:item)
      item.categories = [appetizers]

      visit "/categories/1"
      expect(page).to have_content("Sushi")

      sashimi = Category.create(id: 2, title: "sashimi", description: "category")
      create(:item, title: "Hamachi", categories: [sashimi])

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
