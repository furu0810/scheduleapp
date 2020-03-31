class Schedule < ApplicationRecord
    
  belongs_to :user
  
  validates :title, presence: true, length: { maximum: 20 }
  validates :body, presence: true, length: { maximum: 20 }
  validates :place, presence: true, length: { maximum: 20 }
  validates :start_time, presence: true
  validates :end_time, presence: true
  
  #Notificationモデルの関連付け(アソシエーション)およびスケジュールに紐づいた通知の削除処理
  has_many :notifications, dependent: :destroy
    
end
