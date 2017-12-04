Rails.application.routes.draw do

  get '/landing', to: 'landing_page#index'
  devise_for :users
  resources :places
  resources :users

  root 'places#index'

  get '/pages/try', to: 'pages#try'

end
