class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create post_params
    redirect_to posts_path
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

  private

  def post_params
    params.require( :post ).permit( :title, :description, :image, :longitude, :latitude, :post_visibility )
  end



end
