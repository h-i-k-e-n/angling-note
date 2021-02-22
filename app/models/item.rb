class Item < ActiveRecord::Base
  validates :price,:quantity,:weight, presence: true, numericality: { only_interger: true}
  validates :title,:manufacturer,:purchase_date,:retailer,:image, presence: true
  has_one :category
  has_one_attached :image
  
  
  include ActiveHash::Associations
  has_many :checks

 
  def self.search(search)
    return Item.all unless search
      Item.where(['category_id LIKE ?', "%#{search}%"])
  end

end
