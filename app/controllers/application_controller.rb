class ApplicationController < ActionController::Base
  before_action :fetch_user

  def fetch_user
    if session[:user_id].present?
      @current_user = User.find_by id: session[:user_id]
    end
    session[:user_id] = nil unless @current_user.present?
  end # fetch_user


  def check_if_logged_in
    redirect_to root_path unless @current_user.present?
  end # check_if_logged_in

end
