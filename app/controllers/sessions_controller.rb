class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user
      session[:user_id] = user.id 
      redirect_to user_path(user.id), notice: "Logged in"
    else
      flash.now.alert = "Email does not exist"
      render "new"
    end
  end

  def destroy
  end
end
