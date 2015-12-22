class AdminsController < ApplicationController

  def index
  end
  def new
    @admin = Admin.new
  end  

  def create
   Admin.create(admin_params)
   redirect_to root_path
  end

  def adminslogin
  end

  private

  def admin_params
    params.require(:admin).permit(:username, :password)
  end

end
