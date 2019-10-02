class SessionsController < ApplicationController

  def new
  end

  # Log user in
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else 
      session[:name] = params[:name]
      redirect_to home_path
    end
  end

  # Log user out
  def destroy
    if current_user
      session.delete :name
    end
    redirect_to '/'
  end

end
