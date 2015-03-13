require "rails_helper"

RSpec.feature "Unauthenticated user browses items" do

  context "unauthenticated user" do
    scenario "can browse the items" do
      item = create(:item)
      visit "/menu"
      expect(current_path).to eq(menu_path)
      expect(page).to have_content("Sushi")
    end

    scenario "can browse items in each category" do
      Category.create(id: 1, title: "appetizers")
      item = create(:item)

      visit "/categories/appetizers"
      expect(page).to have_content("Sushi")

      Category.create(id: 2, title: "sashimi")
      item2 = create(:item, title: "Hamachi", category_id: 2)

      visit "/categories/sashimi"
      expect(page).to have_content("Hamachi")
      expect(page).to_not have_content("Sushi")
    end
  end

end
