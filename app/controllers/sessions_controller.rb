class SessionsController < ApplicationController
  def new
  end

  def create
    
    email = params[:session][:email].downcase
    password = params[:session][:password]
    
      if login(email, password)
        flash[:success] = "ログインに成功しました。"
        redirect_to schedules
      else
        flash.now[:danger] = "ログインに失敗しました。"
      render :new
      end
      
  end

  def destory
    
   
    
  end
  
  private
  
  def login(email, password)
    
    @user = User.find_by(email: email)
    
      if @user && @user.authenticate(password)
        #ログイン成功
        session[:user_id] = @user.id
        return true
      else
        #ログイン失敗
        return false
      end
  
  end
      
end
