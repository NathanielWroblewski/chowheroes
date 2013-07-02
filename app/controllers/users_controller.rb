class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.nil? || @user.id.nil?
    	redirect_to root_path :flash => { :error => "Invalid username, email, or password."}
    else session[:id] = @user.id
    	redirect_to @user
    end
  end

  def show
    @user = User.find(session[:id])
  end

end