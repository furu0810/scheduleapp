class SchedulesController < ApplicationController
  
  before_action :require_user_logged_in
  
  def new
  end

  def create
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
end
