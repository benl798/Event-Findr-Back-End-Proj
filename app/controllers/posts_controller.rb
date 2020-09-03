class PostsController < ApplicationController

  before_action :authenticate_user


  def new
    @post = Post.new
  end

  def create
    Post.create!(
      title: params[:title],
      description: params[:description],
      image: params[:image],
      latitude: current_user.latitude,
      longitude: current_user.longitude,
      user_id: current_user.id
    )
  end

  def index
    @posts = Post.all
    respond_to do |format| #method
      format.html
      format.json {render json: @posts}
    end
  end

  #Index methods
  def index_all
    posts = Post.all
    render json: posts, include: ['liked_by']
  end

  def index_near_me
    posts = Post.near([current_user.latitude, current_user.longitude], 50)
    render json: posts, include: ['liked_by']
  end

  def index_follows
    following_ids = current_user.following_ids
    posts = Post.where(user_id: following_ids)
    render json: posts, include: ['liked_by']
  end


  def show
    @users = User.all
    @post = Post.find params[:id]
    @comments = Comment.where(post_id: @post.id) # array of objects associated with that post ID
    respond_to do |format| #method
      format.html
      format.json {render json: @post, include: ['comments', 'liked_by', 'disliked_by']}
    end
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    post = Post.find params[:id]
    post.update post_params
    redirect_to post_path
  end

  def destroy
    post = Post.find params[:id]
    post.destroy
  end

  def add_comment_to_post
    post = Post.find params[:id]
    comment = Comment.create!(comment: params[:comment], user_id: current_user.id, post_id: post.id)
    render json: post, include: ['comments', 'liked_by', 'disliked_by']
  end

  def show_my_posts
    posts = User.find_by(id: current_user.id).posts
    respond_to do |format|
      format.html
      format.json {render json: posts, include: ['comments']}
    end
  end

  def like_this_post
    post = Post.find_by(id: params[:id])
    if post.liked_by_users.include?(@current_user)
      post.liked_by_users.delete(@current_user)
    else
      post.liked_by_users << @current_user
    end
    redirect_to post_path(params[:id])
  end

  def create_like_for_this_post
    Like.create(
      post_id: params[:post_id],
      user_id: current_user.id,
      status: params[:status]
    )
  end

  def remove_like_from_post
    Like.find_by(user_id: current_user.id, post_id: params[:post_id]).destroy
  end

  def get_owner_of_post
    user = User.find_by(id: Post.find_by(id: params[:id]).user_id)
    render json: {id: user.id, name: user.name}
  end

  def distance_from_me
    post = Post.find_by(id: params[:id])
    distance = post.distance_to([current_user.latitude, current_user.longitude])
    render json: distance
  end


  private

  def post_params
    params.require( :post ).permit( :title, :description, :image, :longitude, :latitude, :post_visibility )
  end



end
