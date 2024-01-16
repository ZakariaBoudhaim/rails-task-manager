class PagesController < ApplicationController
  def index
    @tasks = Task.all
  end

  def list
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save
     redirect_to tasks_path
  end

  def new
    @task = Task.new
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:todo, :detail)
  end
end
