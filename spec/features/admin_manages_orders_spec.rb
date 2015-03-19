require "rails_helper"

RSpec.feature "a valid admin" do
  let(:admin) { User.create(email: "example@example.com", password: "password", full_name: "example", display_name: "example admin", role: 1) }

  def admin_log_in
    admin
    visit "/login"
    fill_in("session[email]", with: admin.email)
    fill_in("session[password]", with: admin.password)
    click_link_or_button "Login"
  end

  context "views the admin dashboard" do
    scenario "clicks on manage orders" do
      admin_log_in
      Order.create(user_id: 1, cart_items: { "1" => 1 })
      click_link_or_button "Manage Orders"
      expect(page).to have_content("Order ID")
    end

    scenario "can view an individual order" do
      admin_log_in
      item = create(:item)
      # binding.pry
      Order.create(user_id: admin.id, cart_items: { "#{item.id}" => 4 })
      click_link_or_button "Manage Orders"
      click_link_or_button "View Order Details"
      expect(page).to have_content("Sushi")
    end

    scenario "can change the status of an order to paid" do
      admin_log_in
      create(:item, id: 4)
      Order.create(user_id: admin.id, cart_items: { "4" => 12 })
      click_link_or_button "Manage Orders"
      click_link_or_button "View Order Details"
      click_link_or_button "Mark As Paid"
      visit "/orders"
      expect(page).to have_content("paid")
    end

    scenario "can change the status of an order to cancelled" do
      admin_log_in
      create(:item, id: 4)
      Order.create(user_id: admin.id, cart_items: { "4" => 12 })
      click_link_or_button "Manage Orders"
      click_link_or_button "View Order Details"
      click_link_or_button "Mark As Cancelled"
      visit "/orders"
      expect(page).to have_content("cancelled")
    end

    scenario "can change the status of an order to complete" do
      admin_log_in
      create(:item, id: 4)
      Order.create(user_id: admin.id, cart_items: { "4" =>12 })
      click_link_or_button "Manage Orders"
      click_link_or_button "View Order Details"
      click_link_or_button "Mark As Complete"
      visit "/orders"
      expect(page).to have_content("complete")
    end
  end
end
