class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    if current_user.nil?
      redirect_to '/login'
    end
  end

  def current_user
    if session[:name]
      session[:name]
    else
      nil
    end
  end
end
