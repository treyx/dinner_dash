require "rails_helper"

RSpec.feature "Unauthenticated user browses items" do

  context "unauthenticated user" do
    scenario "can browse the items" do
      item = Item.create(title: "sushi")
      visit "/menu"
      expect(current_path).to eq(menu_path)
      expect(page).to have_content("sushi")
    end

    scenario "can browse items in each category" do
      Category.create(id: 1, title: "appetizers")
      item = Item.create(id: 1, title: "gyoza", category_id: 1 )

      visit "/categories/appetizers"
      expect(page).to have_content("gyoza")

      Category.create(id: 2, title: "sashimi")
      item2 = Item.create(id: 2, title: "hamachi", category_id: 2)

      visit "/categories/sashimi"
      expect(page).to have_content("hamachi")
      expect(page).to_not have_content("gyoza")
    end
  end

end
