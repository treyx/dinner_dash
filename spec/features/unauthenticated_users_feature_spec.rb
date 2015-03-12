require "rails_helper"

RSpec.feature "Unauthenticated user browses items" do
  context "unauthenticated user" do
    scenario "can browse the items" do
      item = Item.create(title: "sushi")
      visit "/menu"
      expect(current_path).to eq(menu_path)
      expect(page).to have_content("sushi")
    end
  end
end