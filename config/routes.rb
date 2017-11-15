Rails.application.routes.draw do

  devise_for :users
  resources :places
  resources :users

  root 'places#index'

  get '/pages/try', to: 'pages#try'

end
