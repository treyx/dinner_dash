require "rails_helper"

RSpec.feature "admin adds item" do
  
  xscenario "with valid item details" do
    add_new_item "Sushi Roll", "A Roll Of Sushi", 8.45, 0

    # expect ???
  end
end

  def add_new_item(title, description, price, status)
    visit "/login"
    fill_in 'Title', with: title
    fill_in 'Description', with: description
    fill_in 'Price', with: price
    fill_in 'Status', with: status
    click_button 'Create Item'
  end

  #need to eventually test that it is given a status of 0 by default
  #also will need to change schema and default value like with user role