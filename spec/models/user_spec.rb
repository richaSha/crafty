require 'rails_helper'

describe User do
  it { should validate_presence_of :username }
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email }
  it 'should show new name' do
    user = FactoryBot.create(:user, :username => "Dan")
    user.username.should eq "Dan"
  end

  it 'should show name' do
    user = FactoryBot.create(:user)
    user.username.should eq "Richa"
  end

  it 'should show email' do
    user = FactoryBot.create(:user)
    user.email.should eq "richa.shaurabh@gmail.com"
  end

  it 'should show new email' do
    user = FactoryBot.create(:user, :email => "test@test.com")
    user.email.should eq "test@test.com"
  end
end
