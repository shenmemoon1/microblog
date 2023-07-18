# frozen_string_literal: true

Rails.application.routes.draw do
  get 'password', to: 'password#edit', as: :edit_password
  patch 'password', to: 'password#update', as: :update_password

  # destroy
  delete 'logout', to: 'sessions#destroy'
  # index
  root to: 'main#index'
  # reigistration
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  # login in
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  get 'about', to: 'about#index'
  # paswords reset
  get 'password/reset', to: 'password_reset#new'
  post 'password/reset', to: 'password_reset#create'
end

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# get '/about-us', to: 'about#index', as: :about
