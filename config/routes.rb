Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'
  resources :users, :only => [:show]
  devise_for :users, :controllers => { :sessions => "sessions" }
  get 'welcome/search', to: 'welcome#search'

  resources :drawings
  resources :emails

  get '/about' => 'pages#about'
end
