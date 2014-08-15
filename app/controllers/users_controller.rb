class UsersController < ApplicationController

  def new
    @user = User.new
    render layout: false
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    binding.pry
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end