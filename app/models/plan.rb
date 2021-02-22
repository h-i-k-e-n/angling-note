class Plan < ActiveRecord::Base
  validates :image, presence: true
  
  has_one_attached :image
  include ActiveHash::Associations
   belongs_to :schedule
end
