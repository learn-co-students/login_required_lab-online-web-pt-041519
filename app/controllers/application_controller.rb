class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def logged_in?
  #   !!session[:name]
  # end

  def current_user
    session[:name]
  end

  def authenticate
   if !current_user
     redirect_to '/sessions/new'
   end
  end




  def current_user
    session[:name]
  end

  def homepage
    render 'home'
  end

end
