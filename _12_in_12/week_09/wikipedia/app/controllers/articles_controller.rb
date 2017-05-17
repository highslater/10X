class ArticlesController < ApplicationController

  before_action :set_articles,        only:   [ :index ]
  before_action :authenticate_user!,  except: [ :index, :show ]
  before_action :set_article,         only:   [ :show, :update,
                                                :edit, :delete ]


  def index
    if params[:category].blank?
    else
      categorise
    end
  end

  def show
  end

  def update
  end

  def edit
  end

  def delete
  end

  def new
    @article = current_user.articles.new
  end

  def create
    @article = current_user.articles.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end



  private

  def set_articles
    @articles = Article.all.order('created_at DESC')
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content, :category_id)
  end

  def categorise()
    @category_id = Category.find_by(name: params[:category]).id
    @articles = Article.where(category_id: @category_id).order('created_at DESC')
  end

end
