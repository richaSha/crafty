class Craft < ActiveRecord::Base
  has_many :images
  has_many :reviews
  validates :title, :dcription, :price, :presence => true
end
