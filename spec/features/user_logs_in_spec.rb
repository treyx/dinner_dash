require "rails_helper"

RSpec.describe "User logs in" do
  
  context 'with invalid log in credentials' do

    scenario 'can not log in without email or password' do
      visit '/login'
      click_link_or_button 'Login'
      within("#errors") do
        expect page.has_content?("Invalid Login")
      end
    end

    scenario 'can not log in without email' do
      visit '/login'
      fill_in('session[password]', with: 'pass')
      click_link_or_button 'Login'
      within("#errors") do
        expect page.has_content?("Invalid Login")
      end
    end

    scenario 'can not log in without password' do
      visit '/login'
      fill_in('session[email]', with: 'example@example.com')
      click_link_or_button 'Login'
      within("#errors") do
        expect page.has_content?("Invalid Login")
      end
    end
  end

  context 'with valid log in details' do
    let(:user) { User.create(email: 'example@example.com', password: 'pass') }
    
    scenario 'can log in' do
      user
      visit '/login'
      fill_in('session[email]', with: user.email)
      fill_in('session[password]', with: user.password)
      click_link_or_button 'Login'
      within("#banner") do
        expect page.has_content?("Welcome, #{user.full_name}")
      end
    end
  end
end
