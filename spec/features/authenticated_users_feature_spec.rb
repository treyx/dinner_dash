require "rails_helper"

RSpec.feature "Authenticated user", type: :feature do
  context "authenticated user is logged in" do
    let(:user) { User.create(full_name: "Stan Smith",
                             email: "stan@abc.com",
                             password: "password")}

    scenario "cannot log in" do
      visit '/login'
      fill_in('session[email]', with: user.email)
      fill_in('session[password]', with: user.password)
      click_link_or_button 'Login'

      expect(page).to_not have_content('Login')
      expect(page).to have_content('Logout')
    end

    scenario "can log out" do
      visit '/login'
      fill_in('session[email]', with: user.email)
      fill_in('session[password]', with: user.password)
      click_link_or_button 'Login'
      click_link_or_button 'Logout'

      expect(current_path).to eq(root_path)
      expect(@current_user).to eq(nil)
    end

    scenario "cannot view the administrator screens" do
      visit '/login'
      fill_in('session[email]', with: user.email)
      fill_in('session[password]', with: user.password)
      click_link_or_button 'Login'
      visit '/admin'

      expect(page).to_not have_content('admin')

    end

    scenario "a user cannot create items" do
      visit '/items/new'
      expect(page).to have_content('Not quite yet young grasshopper')
    end

    scenario "a user cannot create categories" do
      visit '/categories/new'
      expect(page).to have_content('Not quite yet young grasshopper')
    end


  end
end






# Authenticated Users (Non-Administrators)
#
# Allowed To:
#
#     view their past orders with links to display each order
#     on that order display page there are:
#         items with quantity ordered and line-item subtotals
#         links to each item description page
#         the current status of the order
#         order total price
#         date/time order was submitted
#         if completed or cancelled, display a timestamp when that action took place


#         if any item is retired from the menu:
#             they can still access the item page
#             they cannot add it to a new cart


# Administrators
#
# As an Administrator, I can also view an order "dashboard" where I can:
#
#     See a listing of all orders with:
#         the total number of orders by status
#         links for each individual order
#         filter orders to display by status type (for statuses "ordered", "paid", "cancelled", "completed")
#         link to transition to a different status:
#             link to "cancel" individual orders which are currently "ordered" or "paid"
#             link to "mark as paid" orders which are "ordered"
#             link to "mark as completed" individual orders which are currently "paid"
#     Access details of an individual order, including:
#         Order date and time
#         Purchaser full name and email address
#         For each item on the order:
#             Name linked to the item page
#             Quantity
#             Price
#             Line item subtotal
#         Total for the order
#         Status of the order
#
# NOT allowed to:
#
#     Modify any personal data aside from their own
# i
