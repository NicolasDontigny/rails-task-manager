# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'tasks' => 'tasks#index', as: :tasks
  # get 'tasks/new' => 'tasks#new', as: :tasks_new
  # get 'tasks/:id' => 'tasks#show', as: :task
  # post 'tasks' => 'tasks#create'
  # get 'tasks/:id/edit' => 'tasks#edit', as: :task_edit
  # patch 'tasks/:id' => 'tasks#update'
  # delete 'tasks/:id' => 'tasks#destroy'

  resources :tasks

  get 'task/:id/complete' => 'tasks#complete', as: :task_complete
  get 'task/:id/uncomplete' => 'tasks#uncomplete', as: :task_uncomplete
end
