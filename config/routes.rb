Rails.application.routes.draw do
  resources :players
  get 'home_page/index'

  resources :search

  root 'home_page#index'

  get 'welcome/index'
  
  resources :articles
  
  root 'welcome#index'
end
