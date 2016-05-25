class TodoItemsController < ApplicationController
  def index
  	@todo_list = TodoList.find(params[:todo_list_id])
  end

  def complete
    @todo_item = @todo_list.todo_items.find(params[:id])
    @todo_item.update_attribute(:completed_at, Time.now)
    redirect_to todo_list_todo_items_path, notice: "Todo item marked as complete."
  end

end