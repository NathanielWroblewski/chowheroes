class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user_params = ActionController::Parameters.new(params[:user])
    user_params.permit!
    @user = User.create(user_params)
    p @user
    p @user.errors.full_messages
   # if @user.id.nil?
    #	redirect_to root_path :flash => { :error => "Invalid username, email, or password."}
   # else session[:id] = @user.id
    #	redirect_to @user
   # end
  end

  def show
    @user = User.find(session[:id])
  end

end
