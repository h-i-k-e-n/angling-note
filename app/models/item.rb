class Item < ActiveRecord::Base
  
  validates :title, presence: true

  belongs_to :category
  has_one_attached :image
  include ActiveHash::Associations
  has_many :checks
  def self.search(search)
    return Item.all unless search
      Item.where(['category_id LIKE ?', "%#{search}%"])
   end

end
