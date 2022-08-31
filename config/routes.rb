Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :meals do
    resources :orders, only: %i[create]
  end


  get "dashboard", to: 'pages#dashboard'

  resources :orders, only: [] do
    resources :reviews, only: %i[show create]
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
