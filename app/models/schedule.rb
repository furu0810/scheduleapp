class Schedule < ApplicationRecord
    
  belongs_to :user
  
  validates :title, presence: true, length: { maximum: 20 }
  validates :body, presence: true, length: { maximum: 20 }
  validates :place, presence: true, length: { maximum: 20 }
  validates :start_time, presence: true
  validates :end_time, presence: true
  
end
