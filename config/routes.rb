Rails.application.routes.draw do

  devise_for :users
  get 'welcome/index'
  root 'welcome#index'

  resources :drawings
  resources :emails

  get '/about' => 'pages#about'
end
