class UsersController < ApplicationController

  before_action :authenticate_user
  before_action :set_user, only: [:show, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params

    if @user.persisted?
        session[:user_id] = @user.id
        redirect_to workouts_path
      else
        render :new
      end
  end

  def index
    # @users = User.all
  end

  def show
    if @current_user.id == params[:id].to_i
      @user = User.find params[:id]
    else
      redirect_to user_path(@current_user.id)
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user_path
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require( :user ).permit( :name, :email, :password, :image, :longitude, :latitude, :account_type )
  end
end
