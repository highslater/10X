class MoviesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index, :search]
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all.order("created_at ASC")
  end


  def show
    @reviews = Review.where(movie_id: @movie.id).order("created_at DESC")
  end

  def new
    @movie = current_user.movies.new
  end

  def edit
  end

  def create
    @movie = current_user.movies.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search

    (params[:search].present? ?
     @movies = Movie.search(params[:search]) :
     @movies = Movie.all)

    # if params[:search].present?
    #   @movies = Movie.search(params[:search])
    # else
    #   @movies = Movie.all

  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :description, :movie_length, :director, :rating, :image)
  end

end