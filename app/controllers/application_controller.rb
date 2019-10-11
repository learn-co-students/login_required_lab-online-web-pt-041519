class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :not_nil, :not_space, :current_user

  def not_nil
    nil 
  end

  def not_space
    ""
  end

  def current_user
 
      @current_user = session[:name]
  end

  
end
