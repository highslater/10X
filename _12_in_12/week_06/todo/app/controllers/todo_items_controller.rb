class TodoItemsController < ApplicationController

  before_action :set_todo_list, only: [:create]
  before_action :set_todo_item, only: [:create]


  def create
    redirect_to @todo_list
  end


  private

  def todo_item_params
    params[:todo_item].permit(:content)
  end

  def set_todo_list
    @todo_list = TodoList.find(params[:todo_list_id])
  end

  def set_todo_item
    @todo_item = @todo_list.todo_items.create(todo_item_params)
  end

end
