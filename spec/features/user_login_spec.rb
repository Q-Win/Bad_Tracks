require 'rails_helper'

describe 'user login' do
  describe 'anonymous users can login as registered users' do
    it 'should succeed' do
      username = 'Dr Pepper'
      password = 'awesomesoda'
      user = User.create(username: username, password: password)

      visit root_path
      
      click_on 'I already have an account'

      expect(current_path).to eq(login_path)
      fill_in :username, with: username
      fill_in :password, with: password
      click_on 'Log In'
      expect(current_path).to eq(user_path(user))
      expect(page).to have_content("Welcome, #{username}")
    end
  end
end
