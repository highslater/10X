class WorkoutsController < ApplicationController

  before_action :find_workouts, only: [:index]
  before_action :find_workout, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def edit
  end

  def update
    if @workout.update(workout_params)
      redirect_to @workout
    else
      render 'edit'
    end
  end

  def destroy
    @workout.destroy
    redirect_to root_path

  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end


  private

  def find_workout
    @workout = Workout.find(params[:id])
  end

  def find_workouts
    @workouts = Workout.all.order('created_at DESC')
  end

  def workout_params
    params.require(:workout).permit(:date, :workout, :mood, :length)
  end
end