class User < ApplicationRecord
  
  def self.find_or_create_form_auth(auth)
    
    provider = auth[:provider]
    uid = auth[:uid]
    image = auth[:info][:image]
    nickname = auth[:info][:nickname]
    
    find_or_create_by(provider: provider, uid: uid) do |user|
      
      user.uid = uid
      user.nickname = nickname
      user.image = image
      
    end
    
  end
  
  before_save { self.email.downcase! }
  validates :name, presence: true, length: { maximum: 50}
  validates :email, presence: true, length: { maximum: 100},
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6}
  
  #Scheduleモデルとの関連付け(アソシエーション),ユーザーに紐づくスケジュールの削除処理
  has_many :schedules, dependent: :destroy
  
end
