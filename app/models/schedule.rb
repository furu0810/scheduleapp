class Schedule < ApplicationRecord
    
  belongs_to :user
  
  validates :title, presence: true
  validates :body, presence: true
  validates :place, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  
end
