Rails.application.routes.draw do
  get 'home_page/index'

  get 'welcome/index'
  
  resources :articles
  
  root 'welcome#index'
end
