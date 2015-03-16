# require "rails_helper"
#
# RSpec.describe "User logs in" do
#
#   context 'when logged in' do
#     let(:user) { User.create(full_name: 'dg',
#                               email: 'example@example.com',
#                               password: 'password') }
#
#       scenario 'can view own profile' do
#         allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(:current_user)
#         visit 'users/profile'
#         expect(page).to have_content("Welcome, ")
#       end
#
#       scenario "cannot view someone else's profile" do
#         allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(:current_user)
#
#         protected_user = User.create(full_name: 'dga',
#                     email: 'stsysts@yahoo.com',
#                     password: 'password',
#                     id: 3)
#
#         visit user_path(protected_user)
#         expect(page).to have_content("Login")
#       end
#
#   end
#
#   def login
#     visit '/login'
#     fill_in('session[email]', with: user.email)
#     fill_in('session[password]', with: user.password)
#     click_link_or_button 'Login'
#   end
#
# end
