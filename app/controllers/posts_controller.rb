class PostsController < ApplicationController
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

  def show
    @users = User.all
    @post = Post.find params[:id]
    @comments = Comment.where(post_id: @post.id) # array of objects associated with that post ID
    respond_to do |format| #method
      format.html
      format.json {render json: @post, include: ['comments']}
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
    redirect_to posts_path
  end

  def add_comment_to_post
    post = Post.find params[:id]
    comment = Comment.create!(comment: params[:comment], user_id: User.first.id)
    post.comments << comment
    redirect_to post_path(post)
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



  # def dislike_this_post
  #   post = Post.find_by(id: params[:id])
  #   if post.disliked_by_users.include?(@current_user)
  #     post.disliked_by_users.delete(@current_user)
  #   else
  #     post.disliked_by_users << @current_user
  #   end
  #   redirect_to post_path(params[:id])
  # end

  private

  def post_params
    params.require( :post ).permit( :title, :description, :image, :longitude, :latitude, :post_visibility )
  end



end
