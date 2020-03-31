class NotificationsController < ApplicationController
  
  before_action :require_user_logged_in
  
  def index
    #current_userのスケジュールに紐づいた通知一覧
    @notifications = current_user.notifications.all
  end
  
end
