require "rails_helper"

RSpec.describe "User logs in" do

  context "with invalid log in credentials" do

    scenario "cannot log in without email or password" do
      visit "/login"
      click_link_or_button "Login"
      within(".flash") do
        expect(page).to have_content("Invalid Login")
      end
    end

    scenario "cannot log in without email" do
      visit "/login"
      fill_in("session[password]", with: "pass")
      click_link_or_button "Login"
      within(".flash") do
        expect(page).to have_content("Invalid Login")
      end
    end

    scenario "cannot log in without password" do
      visit "/login"
      fill_in("session[email]", with: "example@example.com")
      click_link_or_button "Login"
      within(".flash") do
        expect(page).to have_content("Invalid Login")
      end
    end

    scenario "logging in does not clear the cart" do
      user = User.create(full_name: "dg",
                             email: "example@example.com",
                          password: "password")
      create(:item)
      visit "/menu"
      within("#items") do
        click_link_or_button "Add To Cart"
      end
      visit "/cart"
      expect(page).to have_content("Sushi")
      expect(page).to_not have_content("Onigiri")
      expect(page).to have_content("1")
      visit "/login"
      fill_in("session[email]", with: user.email)
      fill_in("session[password]", with: user.password)
      click_link_or_button "Login"
      expect(page).to have_content("You are logged in")
      visit "/cart"
      expect(page).to have_content("Sushi")
      expect(page).to_not have_content("Onigiri")
      expect(page).to have_content("1")
    end
  end

  context "as a valid default user" do
    let(:user) { User.create(full_name: "dg",
                              email: "example@example.com",
                              password: "password") }

    scenario "can log in" do
      visit "/login"
      fill_in("session[email]", with: user.email)
      fill_in("session[password]", with: user.password)
      click_link_or_button "Login"
      expect(page).to have_content("You are logged in")
    end
  end

  context "as a valid admin" do
    let(:admin) { User.create(full_name: "dg",
                              email: "example@example.com",
                              password: "password",
                              role: 1) }

    scenario "can log in" do
      visit "/login"
      fill_in("session[email]", with: admin.email)
      fill_in("session[password]", with: admin.password)
      click_link_or_button "Login"
      expect(page).to have_content("Welcome to the admin dashboard")
    end
  end

end
