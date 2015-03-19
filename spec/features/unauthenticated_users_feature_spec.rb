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

    scenario "can view an individual item" do
      create(:item)
      visit "/menu"
      click_link_or_button "Sushi"
      expect(page).to have_content("$11.00")
      expect(page).to_not have_content("status")
    end
  end
end
