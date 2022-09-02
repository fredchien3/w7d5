Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "subs#index"

  resources :users, only: [:new, :create, :show, :destroy]
  resources :subs, path: :r do
    resources :posts, only: [:new, :create]
  end
  resources :posts, except: [:new, :create, :index]

  resource :session, only: [:new, :create, :destroy]
end
