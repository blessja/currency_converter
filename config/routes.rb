Rails.application.routes.draw do
  resources :history_logs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "history_logs#index"
end
