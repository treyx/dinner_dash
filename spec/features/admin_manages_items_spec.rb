require "rails_helper"

RSpec.feature "admin views the admin dashboard" do
  let(:admin) { User.create(full_name: "you need a name here!",
                            email: "example@example.com",
                            password: "password", role: 1) }

  def add_new_item(title, description, price)
    fill_in 'Title', with: title
    fill_in 'Description', with: description
    fill_in 'Price', with: price
    click_button 'Create Item'
  end

  def admin_login
    visit "/login"
    fill_in("session[email]", with: admin.email)
    fill_in("session[password]", with: admin.password)
    click_link_or_button "Login"
  end

  scenario "clicks on manage items" do
    create(:item)
    admin_login
    click_link_or_button "Manage Items"
    expect(page).to have_content("Sushi")
  end

  scenario "can add item" do
    admin_login
    click_link_or_button "Manage Items"
    click_link_or_button "Add Item"
    add_new_item "Sushi Roll", "A Roll Of Sushi", 8.45
    expect(page).to have_content("Sushi Roll")
    #Create item listings including a name, description, price, and upload a photo

  end

  xscenario "can retire an item" do
    admin_login
    click_link_or_button "Manage Items"
    expect(page).to have_content("Retire Item")
    # Retire a item from being sold, which hides it from browsing by any non-administrator
  end

  xscenario "can modify an item" do
    admin_login
    click_link_or_button "Manage Items"
    expect(page).to have_content("Edit Item")
    # Modify existing items’ name, description, price, and photo
    # Assign items to categories or remove them from categories. Products can belong to more than one category.


  end

  xscenario "can create a category" do
    admin_login
    click_link_or_button "Manage Categories"
    expect(page).to have_content("Add Category")
    # Create named categories for items (eg: "Small Plates")

  end

end
