module Blog
  class PostsController < BlogController

    def index
      # @posts = Post.paginate(:page => params[:page])
      # Post.paginate(:page => params[:page], :per_page => 30)
      @posts = Post.most_recent.published.paginate(:page => params[:page], :per_page => 3)
    end

    def show
      @post = Post.friendly.find(params[:id])
    end

  end

end
