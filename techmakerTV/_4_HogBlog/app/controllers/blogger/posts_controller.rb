# app/controllers/blogger/posts_controller.rb

module Blogger

  class PostsController < BloggerController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def index
      @posts = current_author.posts.most_recent
    end

    def show
    end

    def new
      @post = current_author.posts.new
    end

    def edit
    end

    def create
      @post = current_author.posts.new(post_params)

      respond_to do |format|
        if @post.save
          format.html { redirect_to blogger_post_path(@post), notice: 'Post was successfully created.' }
          format.json { render :show, status: :created, location: @post }
        else
          format.html { render :new }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @post.update(post_params)
          format.html { redirect_to blogger_post_path(@post), notice: 'Post was successfully updated.' }
          format.json { render :show, status: :ok, location: @post }
        else
          format.html { render :edit }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @post.destroy
      respond_to do |format|
        format.html { redirect_to blogger_posts_url, notice: 'Post was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
    def set_post
      @post = current_author.posts.friendly.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body, :description, :banner_image_url)
    end
  end
end
