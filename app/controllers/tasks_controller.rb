# frozen_string_literal: true

# Tasks Controller
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    # no code needed
  end

  def create
    new_task_attributes = params.require(:task).permit(:title, :details)
    new_task = Task.create(new_task_attributes)

    redirect_to task_path(new_task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    new_task_attributes = params.require(:task).permit(:title, :details)

    task.update(new_task_attributes)

    redirect_to task_path(task)
  end

  def complete
    task = Task.find(params[:id])

    task.completed = true

    task.save

    redirect_to tasks_path
  end

  def uncomplete
    task = Task.find(params[:id])

    task.completed = false

    task.save

    redirect_to tasks_path
  end

  def destroy
    task = Task.find(params[:id])

    task.destroy

    redirect_to tasks_path
  end
end
