require 'rails_helper'

describe User do

  it 'user sign out massage' do
    user = FactoryBot.create(:user)
    visit root_path
    click_link 'Sign in'
    fill_in "email", with: "richa.shaurabh@gmail.com"
    fill_in "password", with: "richa123"
    click_button 'Sign in'
    click_link 'Sign Out'
    expect(page).to have_content "You've signed out"
  end

end
