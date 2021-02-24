class Check < ActiveRecord::Base
  validates :title, presence: true
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one :item
  belongs_to :list
  has_one :choice
end
