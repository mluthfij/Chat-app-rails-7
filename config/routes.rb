Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get "users", to: "devise/session#new"
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
