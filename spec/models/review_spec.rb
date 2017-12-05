require 'rails_helper'

describe Review do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :craft_id }
  it { should validate_presence_of :review }
  it { should belong_to :user }
  it { should belong_to :craft }
end
