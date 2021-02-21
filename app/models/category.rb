class Category < ActiveRecord::Base
  validates :category, presence: true
  has_many :items ,dependent: :destroy
  include ActiveHash::Associations

end
