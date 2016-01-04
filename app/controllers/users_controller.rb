class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def login
  end

  def new
    authenticate!
    @users = User.all
    @user = User.new
  end

  def create
    # authenticate!
    User.create(user_params)
    redirect_to new_user_path
  end

  def destroy
    authenticate!
    User.delete(params[:id])
    redirect_to new_user_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
