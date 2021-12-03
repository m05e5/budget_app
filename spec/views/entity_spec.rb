require 'rails_helper'

RSpec.describe 'Entities', type: :feature do
  describe 'Entity view testing' do
    before :each do
      visit new_user_session_path
      User.create(name: 'test', email: 'test@mail.com', password: '111111',
                  password_confirmation: '111111')
      fill_in 'Email', with: 'test@mail.com'
      fill_in 'Password', with: '111111'
      click_button 'Log in'
      visit categories_new_path
      fill_in 'Name', with: 'Test Project'
      click_button 'Submit'
      click_link 'Test Project'
    end

    it 'Is in the Transaction view' do
      expect(page).to have_content('Transactions')
    end

    it 'can create a new transaction' do
      visit entities_new_path
      fill_in 'Name', with: 'basic equipments'
      fill_in 'Amount($)', with: 550
      select 'Test Project', from: 'Select a category'
      click_button 'Submit'
      click_link 'Test Project'
      expect(page).to have_content('basic equipments')
      expect(page).to have_content('550 $')
    end
  end
end
