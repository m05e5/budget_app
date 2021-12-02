require 'rails_helper'

RSpec.describe 'Category', type: :feature do
  describe 'Category view' do
    before :each do
      visit new_user_session_path
      User.create(name: 'test', email: 'test@mail.com', password: '111111',
                  password_confirmation: '111111')
      fill_in 'Email', with: 'test@mail.com'
      fill_in 'Password', with: '111111'
      click_button 'Log in'
    end

    it 'Is in the category view' do
      expect(page).to have_content('Categories')
    end
  end
end