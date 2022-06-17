Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root 'posts#index', as: 'home'
  # Defines the root path route ("/")
  # root "articles#index"

  get 'about' => 'pages#about', as: 'about'

  resources :posts do
    resources :comments
  end
  
end
