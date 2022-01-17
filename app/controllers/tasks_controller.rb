class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  
  def new 
    @task = Task.new
  end
  
  def create
    p task_params
  end
  
  private
  def task_params
    params.require(:task).permit(:title)
  end
end
