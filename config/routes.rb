Rails.application.routes.draw do
  get "tasks", to: "tasks#index", as: :tasks

# Create: 2 endpoints
  get 'tasks/new', to: "tasks#new", as: :new_task
  post 'tasks', to: "tasks#create"

# Update: 2 endpoints
  get 'tasks/:id/edit', to: "tasks#edit", as: :edit_task
  patch 'tasks/:id', to: "tasks#update"

  get 'tasks/:id', to: 'tasks#show', as: :task

  # Destroy one
  delete 'tasks/:id', to: "tasks#destroy", as: :delete_task
end
