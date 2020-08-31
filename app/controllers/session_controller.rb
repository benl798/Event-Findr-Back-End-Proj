class SessionController < ApplicationController
  def home
  end

  def new
  end

  def create
    user = User.find_by email: params[:email]

    if user.present? && user.authenticate( params[:password] )
      session[:user_id] = user.id
      redirect_to user_path
    else
      flash[:error] = 'Invalid email or password'
      redirect_to new_user_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_user_path
  end
end
