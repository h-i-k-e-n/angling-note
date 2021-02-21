class Fish < ActiveRecord::Base
  
  has_one_attached :image
  include ActiveHash::Associations
  has_many :items
end
