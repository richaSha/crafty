class Craft < ActiveRecord::Base
  has_many :images
  validates :title, :dcription, :price, :presence => true
end
