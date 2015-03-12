require "rails_helper"

RSpec.describe "User logs in" do
  
  context 'with invalid log in credentials' do

    scenario 'can not log in without email or password' do
      visit '/login'
      click_link_or_button 'Login'
      within("#errors") do
        expect(page).to have_content("Invalid Login")
      end
    end

    scenario 'can not log in without email' do
      visit '/login'
      fill_in('session[password]', with: 'pass')
      click_link_or_button 'Login'
      within("#errors") do
        expect(page).to have_content("Invalid Login")
      end
    end

    scenario 'can not log in without password' do
      visit '/login'
      fill_in('session[email]', with: 'example@example.com')
      click_link_or_button 'Login'
      within("#errors") do
        expect(page).to have_content("Invalid Login")
      end
    end
  end

  context 'as a valid default user' do
    let(:user) { User.create(email: 'example@example.com', password: 'pass') }
    
    scenario 'can log in' do
      user
      visit '/login'
      fill_in('session[email]', with: user.email)
      fill_in('session[password]', with: user.password)
      click_link_or_button 'Login'
      within("#banner") do
        expect(page).to have_content("Welcome,")
      end
    end

    context "as a valid admin" do
      let(:admin) { User.create(email: "example@example.com", password: "password", role: 1) }

      scenario "can log in" do
        admin
        visit "/login"
        fill_in("session[email]", with: admin.email)
        fill_in("session[password]", with: admin.password)
        click_link_or_button "Login"
        within("#banner") do
          expect(page).to have_content("Welcome to the admin dashboard")
        end
      end
    end
  end
end
