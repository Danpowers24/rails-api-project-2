# frozen_string_literal: true

Rails.application.routes.draw do
  resources :user, except: %i[new edit]
  resources :days, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  get '/days' => 'days#index'
  get '/days/:id' => 'days#show'
  delete '/days/:id' => 'days#destroy'
  patch '/days/:id' => 'days#update'
  post '/days' => 'days#create'

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
