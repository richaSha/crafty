require 'rails_helper'

describe Craft do
  it { should validate_presence_of :title }
  it { should validate_presence_of :dcription }
  it { should validate_presence_of :price }
  it { should have_many :reviews }
end
