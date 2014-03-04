Wikiful::Application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get "categories/index"
  get "categories/show"
  get "welcome/index"

  root 'welcome#index'
  resources :articles
  resources :categories
  resources :users
  resources :sessions

end
