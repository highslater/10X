class RecipesController < ApplicationController

  before_action :find_recipe,  only: [:show, :edit, :update, :destroy]
  before_action :find_recipes, only: [:index]
  before_action :authenticate_user!, except: [:index, :show]


  def show
  end

  def edit
  end

  def index
  end

  def new
    @recipe = current_user.recipes.new
  end

  def create
    @recipe = current_user.recipes.new(recipe_params)

    if @recipe.save
      redirect_to @recipe, notice: "#{@recipe.title} was created "
    else
      render 'new'
    end
  end

  def destroy
    @title = @recipe.title
    @recipe.destroy
    redirect_to root_path, notice: "#{@title} was deleted."
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: "#{@recipe.title} was updated"
    else
      render 'edit'
    end
  end

  ################################################

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def find_recipes
    @recipes = Recipe.all.order("created_at DESC")
  end

  def recipe_params
    params.require(:recipe).permit(
      :title,
      :description,
      :image,
      ingredients_attributes: [:id, :name, :_destroy],
      directions_attributes: [:id, :step, :_destroy]
    )
  end

  ###################################################

end
