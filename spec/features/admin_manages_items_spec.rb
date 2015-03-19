require "rails_helper"

RSpec.feature "a valid admin" do
  let(:admin) { User.create(email: "example@example.com", password: "password", full_name: "example", display_name: "example admin", role: 1) }

  def add_new_item(title, description, price)
    fill_in 'Title', with: title
    fill_in 'Description', with: description
    fill_in 'Price', with: price
    find(:css, "[value='1']").set(true)
    click_button 'Create Item'
  end

  def admin_log_in
    admin
    visit "/login"
    fill_in("session[email]", with: admin.email)
    fill_in("session[password]", with: admin.password)
    click_link_or_button "Login"
  end

  context "can view the admin dashboard" do
    scenario "clicks on manage items" do
      admin_log_in
      create(:item)
      click_link_or_button "Manage Items"
      expect(page).to have_content("Sushi")
    end

    scenario "can add an item" do
      admin_log_in
      Category.create(title: "Sushi", description: "Sushi")
      click_link_or_button "Manage Items"
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
      click_link_or_button "Edit Item"
      click_link_or_button "Retire Item"
      click_link_or_button "View Item"
      expect(page).to have_content("retired")
    end

    xscenario "can modify an item's attributes" do
      admin_log_in
      create(:item)
      click_link_or_button "Manage Items"
      click_link_or_button "Edit Item"
      # save_and_open_page
      fill_in("item[title]", with: "SUSHI ALL CAPS")
      expect(page).to have_content("SUSHI ALL CAPS")
    end
  end
end
