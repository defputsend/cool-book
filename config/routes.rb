Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sites#home'
  get '/about', to: 'sites#about'
  resources :articles

  get 'signup', to: 'users#new'
  # post 'users', to: 'user#create'
  resources :users, except: [:new]

  # get 'login', to: 'users#'

end
