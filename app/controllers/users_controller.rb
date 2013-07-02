class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user_params = ActionController::Parameters.new(params[:user])
    user_params.permit!
    @user = User.create(user_params)
  end

  def show
    @user = User.find(session[:id])
  end

end
