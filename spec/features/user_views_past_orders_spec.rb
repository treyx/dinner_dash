require "rails_helper"

RSpec.describe "User views past orders" do

  context "with valid authorization" do
    let(:user) { User.create(full_name: "example",
                             email: "example@example.com",
                             password: "password"
                             )
               }

    scenario "can see a past order" do
      login_and_submit_order
      click_link_or_button "View Past Orders"
      expect(page).to have_content("#{user.full_name}'s Orders")
      expect(page).to have_content("Order ID")
    end
  end



  def login_and_submit_order
    visit "login"
    fill_in("session[email]", with: user.email)
    fill_in("session[password]", with: user.password)
    click_link_or_button "Login"
    create :item
    visit "/menu"
    click_button "Add To Cart"
    click_on "View Cart"
    click_link_or_button "Submit Order"
  end
end
