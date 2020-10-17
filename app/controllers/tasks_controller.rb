class TasksController < ApplicationController
  before_action :find_task, only:[:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(strong_params)
    redirect_to tasks_index_path
  end

  def show
  end

  def edit
  end

  def update
    if params[:task][:completed] == "1"
      params[:task][:completed] = true
    else
      params[:task][:completed] = false
    end

    @task.update(strong_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_index_path
  end

  private

  def strong_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
