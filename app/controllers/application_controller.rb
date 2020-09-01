class ApplicationController < ActionController::Base
  before_action :fetch_user
  before_action :authenticate_user
  # before_action :set_user, only: [:show, :update, :destroy]

<<<<<<< HEAD
  include Knock::Authenticable
=======
  # include Knock::Authenticable
>>>>>>> aa15c3e16face8cbfbf2d23f816ea4faa285ae92

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
