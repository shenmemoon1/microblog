Rails.application.routes.draw do
  root to: 'main#index'
  get '/sign_up', to: 'registrations#new'
  post '/sign_up', to: 'registrations#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/about-us', to: 'about#index', as: :about
  get '/about', to: 'about#index'
end
