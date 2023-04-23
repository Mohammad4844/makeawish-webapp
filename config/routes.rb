Rails.application.routes.draw do
  resources :posts
  get 'files/index'
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post '/posts/:id/comment/new', to: 'comments#create'

  # Defines the root path route ("/")
  root "home#index"

  Rails.application.routes.draw do
    resources :posts do
      resources :comment
    end
    resources :file
    
  end
end
