Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "tasks", to: "tasks#index"
  # Create
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  # Update
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"
   
  # The id needs to be at the bottom
  get "tasks/:id", to: "tasks#show", as: :task

end
