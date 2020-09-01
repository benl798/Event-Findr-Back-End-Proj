class UsersController < ApplicationController


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

  def setUserName
    respond_to do |format|
      format.html
      format.json {render json: current_user.name}
    end
  end

  def follow_this_user
    user = User.find_by(id: params[:id])
    if user.following.include?(@current_user)
      user.following.delete(@current_user)
    else
      user.following << @current_user
    end
    redirect_to user_path(params[:id])

  end

  private

  def user_params
    params.require( :user ).permit( :name, :email, :password, :image, :longitude, :latitude, :account_type )
  end
end
