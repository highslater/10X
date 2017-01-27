module Blog
  class PostsController < BlogController

    # GET /posts
    # GET /posts.json
    def index
      ## perform a paginated query:
      # or, use an explicit "per page" limit:
      @posts = Post.most_recent.published.paginate(:page => params[:page], :per_page => 2)
    end

    # GET /posts/1
    # GET /posts/1.json
    def show
      @post = Post.friendly.find(params[:id])
    end

  end
end
