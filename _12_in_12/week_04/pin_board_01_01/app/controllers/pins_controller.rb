class PinsController < ApplicationController

  before_action :set_pin, only:[ :show, :edit, :update, :destroy, :upvote ]
  before_action :set_pins, only: [ :index ]


  def index
  end

  def show
  end

  def edit
  end

  def new
    @pin = current_user.pins.new
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: "#{@pin.title} Was Successfully UPDATED"
    else
      render 'edit'
    end
  end

  def destroy
    @title = @pin.title
    @pin.destroy
    redirect_to root_path, notice: "#{@title} Was Successfully DELETED"
  end

  def create
    @pin = current_user.pins.new( pin_params )
    if @pin.save
      redirect_to @pin, notice: "#{@pin.title} Was Successfully CREATED"
    else
      render 'new'
    end
  end

  def upvote
    @pin.upvote_by current_user
    redirect_to :back
  end


  private

  def set_pin
    @pin = Pin.find( params[ :id ] )
  end

  def set_pins
    @pins = Pin.all.order("created_at DESC")
  end

  def pin_params
    params.require( :pin ).permit( :image, :title, :description )
  end


end
