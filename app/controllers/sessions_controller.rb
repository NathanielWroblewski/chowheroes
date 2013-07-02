class SessionsController < ApplicationController
  
  def create
    user = User.find_by_username(params[:username])
    if user && user.password == params[:password]
    	session[:id] = user.id
    	redirect_to user
    else
    	redirect_to '/', :flash => { :error => 'Invalid username or password' }
    end
  end

  def destroy
    sessions.clear
    redirect_to '/'
  end
end