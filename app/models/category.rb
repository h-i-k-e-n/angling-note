class Category < ActiveRecord::Base
  validates :category, presence: true
  belongs_to :item ,dependent: :destroy
end
