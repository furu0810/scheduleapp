class Notification < ApplicationRecord  
  
  #スコープ新着順(通知が新着順に表示される処理)
  default_scope -> {order(created_at: :desc)}
  
  belongs_to :schedule
  
end
