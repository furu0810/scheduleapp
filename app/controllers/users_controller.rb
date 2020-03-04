class UsersController < ApplicationController
  
  before_action :require_user_logged_in, only: [:show, :edit, :destroy]
  
  def index 
  end
  
  def show
    
    @user = User.find(params[:id])
    
  end
  
  def new
    
    @user = User.new
    
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = "ユーザーを登録しました。"
      redirect_to login_path
    else
      flash.now[:danger] ="ユーザーの登録に失敗しました。"
      render :new
    end
    
  end
  
  def edit
    
    @user = User.find(params[:id])
    
  end
  
  def update
    
    @user = User.find(params[:id])
    
    if @user.update_attributes(user_params)
      #更新に成功した時の処理
      flash[:success] = "更新に成功しました。"
      redirect_to @user
    else
      flash.now[:danger] = "更新に失敗しました。"
      render :edit
    end
    
  end
  
  def destroy
    
    @user = User.find(id: params[:id])
    
    @user.destroy
    flash[:success] = "ユーザーは正常に削除されました。"
    redirect_back(fallback_location: root_path)
    
  end
  
  #Strongparamater
  
  private
  
  def user_params
    
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
    
  end
  
end
