class UsersController < ApplicationController

  include ActiveModel::Serialization

  def new
    @user = User.new
  end

  def create
    user = User.create(
      name: params[:name],
      email: params[:email],
      password: params[:password],
    )
    render json: user
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

  def setUserName
    respond_to do |format|
      format.html
      format.json {render json: current_user.name}
    end
  end


  # Function to update the location of the current user to match what is happening in the browser
  def update_my_location
    current_user.update(latitude: params[:latitude], longitude: params[:longitude])
  end

  #Function to get the current_user's info in the front end
  def get_current_user
    render json: current_user, methods: :following_ids
  end

  def handle_follow
    if params[:method] == 'Unfollow'
      Follow.find_by(
        follower_id: current_user.id,
        followed_id: params[:followed_id]
      ).destroy
    else
      Follow.create(
        follower_id: current_user.id,
        followed_id: params[:followed_id]
      )
    end
  end


  private

  def user_params
    params.require( :user ).permit( :name, :email, :password, :image, :longitude, :latitude, :account_type )
  end
end
