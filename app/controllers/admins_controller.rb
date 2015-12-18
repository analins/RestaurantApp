class AdminsController < ApplicationController

  def new
    @admin = Admin.new
  end

  def create
    Admin.create(admin_params)
    redirect_to root_path
  end

  def login
  end

  def menu
    authenticate!
    @food = Food.new()
  end

  def users
    authenticate!
    @user = User.new()
  end



  private

  def admin_params
    params.require(:admin).permit(:username, :password)
  end

end
