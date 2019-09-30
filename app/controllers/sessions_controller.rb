class SessionsController < ApplicationController
  before_action :current_user

  def new
  end

  def create
    if !params[:name].nil? && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to '/login'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end
end
