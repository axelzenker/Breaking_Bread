Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :meals do
    resources :orders, only: %i[create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
