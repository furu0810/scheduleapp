class SchedulesController < ApplicationController
  
  before_action :require_user_logged_in
  
  before_action :correct_user, only: [:destroy, :show, :update, :destroy]
  
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
    
    @schedule = Schedule.find(params[:id])
    
  end

  def update
    
    if @schedule.update(schedule_params)
      flash[:success] = "スケジュールの更新に成功しました。"  
      redirect_to @schedule
    else
      flash.now[:danger] = "スケジュールが更新出来ませんでした。"
      render :edit
    end
    
  end

  def destroy
    
    if @schedule.destroy
      flash[:success] = "スケジュールを削除しました。"
      redirect_to schedules_path
    end
    
  end
  
  #Strongparameter
  
  private
  
  def schedule_params
    
   params.require(:schedule).permit(:title, :body, :place, :start_time, :end_time)
  
  end
  
  def correct_user
  
    @schedule = current_user.schedules.find_by(id: params[:id])
    
    unless @schedule
      redirect_to schedules_path
    end
    
  end
  
end
