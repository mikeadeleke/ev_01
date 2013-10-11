Ev01::Application.routes.draw do
  resources :playlists do
    member do
      post :add_to
    end
  end

  resources :bundles, only: [:create, :destroy]
  resources :startups

  devise_for :users
  root 'pages#index'

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/why', to: 'pages#why'
  get '/new', to: 'startups#new'

  get "pages/home"
  get "pages/about"
  get "pages/contact"
  get "pages/why"
end
