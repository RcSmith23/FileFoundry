Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'

  devise_for :users, :controllers => { :sessions => "sessions" }
  resources :users, :only => [:show]

  get 'welcome/search', to: 'welcome#search'

  resources :drawings
  resources :emails

  get '/about' => 'pages#about'
end
