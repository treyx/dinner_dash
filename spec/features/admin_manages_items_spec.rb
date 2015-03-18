require "rails_helper"

RSpec.feature "a valid admin" do
  let(:admin) { User.create(email: "example@example.com", password: "password", full_name: "example", role: 1) }

  def add_new_item(title, description, price)
    fill_in 'Title', with: title
    fill_in 'Description', with: description
    fill_in 'Price', with: price
    click_button 'Create Item'
  end

  def admin_log_in
    admin
    visit "/login"
    fill_in("session[email]", with: admin.email)
    fill_in("session[password]", with: admin.password)
    click_link_or_button "Login"
  end

  context "views the admin dashboard" do
    scenario "clicks on manage items" do
      admin_log_in
      create(:item)
      click_link_or_button "Manage Items"
      expect(page).to have_content("Sushi")
    end
  
    scenario "clicks on add item" do
      admin_log_in
      click_link_or_button "Add Item"
      add_new_item "Sushi Roll", "A Roll Of Sushi", 8.45
      expect(page).to have_content("Sushi Roll")
    end
  end
  
  context "can modify an item's attributes" do
    scenario "makes an item retired" do
      admin_log_in
      create(:item)
      click_link_or_button "Manage Items"
      click_link_or_button "Sushi"
    end
  end
end
