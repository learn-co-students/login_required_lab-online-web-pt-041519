class SessionsController < ApplicationController

  def new

  end

  def create
    session[:name] = params[:name]
    if !logged_in?
      redirect_to login_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

end
