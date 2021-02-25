class Plan < ActiveRecord::Base
  validates :image, presence: true
  
  validate :date_before_start
  validate :date_before_finish
  validate :date_before_end
  
  
    def date_before_start
      return if start_at.blank?
      errors.add(:start_at, "は今日以降のものを選択してください") if start_at < Date.today
    end
  
    def date_before_finish
      return if end_at.blank? 
      errors.add(:end_at, "は今日以降のものを選択してください") if   end_at < Date.today
    end
    def date_before_end
      return if end_at.blank? 
      errors.add(:end_at, "は開始日以降のものを選択してください") if   end_at < start_at
    end


  has_one_attached :image
  include ActiveHash::Associations
   has_many :schedule
end
