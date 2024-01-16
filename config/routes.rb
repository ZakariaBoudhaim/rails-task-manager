Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
    root "pages#index"
    get "tasks", to: "pages#index"
    post "tasks", to: "pages#create"
    get "tasks/new", to: "pages#new", as: :new_task
    get "tasks/:id/edit", to: "pages#edit", as: :edit_task
    get "tasks/:id", to: "pages#list", as: :task
    patch "tasks/:id", to: "pages#update"
    delete "tasks/:id", to: "pages#destroy"
end
