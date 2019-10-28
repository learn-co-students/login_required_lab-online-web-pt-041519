class SessionsController < ApplicationController
   
  def new
    render :new
  end

  def show
  end

  def create
    session[:name] = params[:name]
    if session[:name] == nil || session[:name].empty? == true
        redirect_to new_session_path
    else
        redirect_to '/'
    end
  end

  def destroy
    if session[:name] != nil
        session.clear
    end
  end

end
