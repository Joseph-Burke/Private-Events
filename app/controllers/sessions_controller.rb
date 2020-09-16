class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    session[:user_id] = User.find_by(name:params[:name]).id
    redirect_to new_user_path
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to sessions_new_path
  end
  
end