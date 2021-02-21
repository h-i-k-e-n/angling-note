class Choice < ActiveRecord::Base
  validates :name, presence: true
  has_many :checks
  
end
