class SessionsController < ApplicationController

  def new
    render layout: false
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to root_path
    else
      flash[:error] = "Invalid email/password combination"
      render 'new', layout: 'application'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end