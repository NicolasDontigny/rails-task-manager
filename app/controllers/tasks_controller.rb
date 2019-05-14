# frozen_string_literal: true

# Tasks Controller
class TasksController < ApplicationController
  before_action :find_task,
                only: %i[show edit update complete uncomplete destroy]

  # after_action :redirect_to_tasks,
  #              only: %i[complete uncomplete destroy]

  def index
    @tasks = Task.all
  end

  def show; end

  def new
    @task = Task.new
  end

  def create
    new_task_attributes = params.require(:task).permit(:title, :details)
    new_task = Task.create(new_task_attributes)

    redirect_to task_path(new_task)
  end

  def edit; end

  def update
    new_task_attributes = params.require(:task).permit(:title, :details)

    @task.update(new_task_attributes)

    redirect_to task_path(@task)
  end

  def complete
    @task.completed = true

    @task.save

    redirect_to tasks_path
  end

  def uncomplete
    @task.completed = false

    @task.save

    redirect_to tasks_path
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  # def redirect_to_tasks
  #   redirect_to tasks_path
  # end
end
