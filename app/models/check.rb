class Check < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  validates :title, presence: true

  belongs_to :list,optional: true
  belongs_to :item,optional: true
end
