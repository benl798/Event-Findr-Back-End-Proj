class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token, raise: false

  before_action :fetch_user
  # before_action :set_user, only: [:show, :update, :destroy]

  include Knock::Authenticable

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
