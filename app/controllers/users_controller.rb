class UsersController < ApplicationController
  skip_before_action :ensure_logged_in

  def new
    @user = User.new
  end

  def create
    
    @user = User.new(user_params)

    if @user.save
      redirect_to products_url, notice: "Signed up!"
    else
      render "new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end
end
