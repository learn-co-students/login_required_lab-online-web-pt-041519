class SessionsController < ApplicationController


  def new
  end
 #If a user fails to enter their name on the login page,
 #they should be redirected there until they successfully do so.
  def create
    current_user = session[:name] = params[:name]
     if !params[:name] || params[:name].empty?
       redirect_to '/login'
    else
      current_user
      redirect_to controller: 'application', action: 'hello'
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end



end
