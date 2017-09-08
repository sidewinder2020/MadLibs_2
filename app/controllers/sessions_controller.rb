class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:username])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to login_path
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
