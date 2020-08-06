class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(username: params[:user][:username])
    redirect_to @user
  end

  def show
    @users = User.all
  end
end
