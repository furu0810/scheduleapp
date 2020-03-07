class SchedulesController < ApplicationController
  
  before_action :require_user_logged_in
  
  before_action :correct_user, only: [:destroy]
  
  def new
    
    @schedule = Schedule.new
    
  end

  def create
    
    @schedule = current_user.schedules.build(schedule_params)
    
      if @schedule.save
        flash[:success] = "スケジュールの投稿に成功しました。"
        redirect_to schedules_path
      else  
        flash.now[:danger] ="スケジュールの投稿に失敗しました。"
        render :new
      end
  
  end

  def show
  end

  def index
    
    @schedules = current_user.schedules.all
    
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  def schedule_params
    
   params.require(:schedule).permit(:title, :body, :place, :start_time, :end_time)
  
  end
  
end
