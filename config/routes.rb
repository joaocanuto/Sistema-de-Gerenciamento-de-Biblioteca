Rails.application.routes.draw do
  devise_for :admins
  devise_for :clientes
  mount Blazer::Engine, at: "blazer"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
