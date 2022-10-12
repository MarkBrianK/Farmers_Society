Rails.application.routes.draw do
  resources :users
  resources :admins
  resources :books
  resources :farmer_inputs
  resources :farmer_output_deliveries
  resources :farmers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
