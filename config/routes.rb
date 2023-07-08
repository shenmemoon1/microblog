Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/', to: 'main#index'
  root to: 'main#index'
  # get '/about-us', to: 'about#index', as: :about
  get '/about', to: 'about#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
