Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/create'
  get 'tasks/show'
  get 'tasks/edit'
  get 'tasks/update'
  get 'tasks/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # all action
  get    "tasks",          to: "tasks#index"

  # create new
  get    "tasks/new",      to: "tasks#new", as: :new_task
  post   "tasks",          to: "tasks#create"

  # show (one)
  get    "tasks/:id",      to: "tasks#show", as: :task

  # edit update (one)
  get    "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch  "tasks/:id",      to: "tasks#update"

  # delete (one)
  delete "tasks/:id",      to: "tasks#destroy"
end
