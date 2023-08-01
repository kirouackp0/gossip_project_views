Rails.application.routes.draw do
  root 'landing#index'
  get 'homepage/index', to: 'homepage#index'
  get 'contact/index', to: 'contact#index'
  get 'team/index', to: 'team#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
