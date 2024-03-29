Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "tasks" => "tasks#index", as: :tasks
  get "tasks/new" => "tasks#new", as: :new_task
  get "tasks/:id/edit" => "tasks#edit", as: :edit
  patch "tasks/:id" => "tasks#update"
  get "tasks/:id" => "tasks#show", as: :task
  post "tasks" => "tasks#create"
  get "tasks/:id/toggle" => "tasks#toggle", as: :toggle

  get 'tasks/:id/destroy', to: 'tasks#destroy', as: :destroy
end
