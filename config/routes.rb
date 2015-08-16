Rails.application.routes.draw do

  devise_for :users
  get 'welcome/index'
  get 'welcome/search', to: 'welcome#search'
  root 'welcome#index'

  resources :drawings
  resources :emails

  get '/about' => 'pages#about'
end
