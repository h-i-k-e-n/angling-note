class Plan < ActiveRecord::Base
  has_one_attached :image
  include ActiveHash::Associations
end
