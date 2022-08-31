Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :meals do
    resources :orders, only: %i[create]
  end
  resources :orders, only: [] do
    resources :reviews, only: %i[show create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
