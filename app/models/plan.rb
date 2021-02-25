class Plan < ActiveRecord::Base
  validates :image, presence: true
  
  has_one_attached :image
  include ActiveHash::Associations
   has_many :schedule
end
