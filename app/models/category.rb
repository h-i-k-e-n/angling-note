class Category < ActiveRecord::Base
  
  has_many :items
  include ActiveHash::Associations

end
