class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user_params = ActionController::Parameters.new(params[:user])
    user_params.permit!
    user = User.new(user_params)
    user.save
    redirect_to user
  end

  def show
    @user = User.find(session[:id])
  end

end
