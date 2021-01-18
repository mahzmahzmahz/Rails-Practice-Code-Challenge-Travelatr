class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]


  def index
    @posts = Post.all 
  end

  def show
  end

  def edit
  end

  def update
    

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params(:title, :content, :likes, :blogger_id, :destination_id))
      if @post.valid?
        redirect_to post_path(@post)
      else 
        flash[:message] = @post.errors.full_messages
        redirect_to new_post_path
      end
      

  end

  def like_post
    post = Post.find(params[:id])
    post.likes += 1
    post.save

    redirect_to post_path(post)
  end

  
  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params(*args)
    params.require(:post).permit(*args)
  end

end