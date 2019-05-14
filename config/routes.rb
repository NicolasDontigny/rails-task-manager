# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks' => 'tasks#index', as: :tasks
  get 'task/:id' => 'tasks#show', as: :task
  get 'tasks/new' => 'tasks#new', as: :tasks_new
  post 'tasks' => 'tasks#create'
  get 'task/:id/edit' => 'tasks#edit', as: :task_edit
  patch 'task/:id' => 'tasks#update'
  delete 'task/:id' => 'tasks#destroy'

  get 'task/:id/complete' => 'tasks#complete', as: :task_complete
  get 'task/:id/uncomplete' => 'tasks#uncomplete', as: :task_uncomplete
end
