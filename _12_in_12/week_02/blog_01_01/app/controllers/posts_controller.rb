class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_posts, only: [:index]

  def show
  end

  def edit
  end

  def index
    @posts
  end

  def new
    @post = Post.new
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def update
    if @post.update(params[:post].permit(:title, :body))
      redirect_to @post
    else
      render 'edit'
    end
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def set_posts
    @posts = Post.all.order('created_at DESC')
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
