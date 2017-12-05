class Review < ActiveRecord::Base
  belongs_to :craft
  belongs_to :user
  validates :craft_id, :user_id, :review,  :presence => true
end
