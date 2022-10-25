Rails.application.routes.draw do
  resources :mining_types
  resources :myning_types
  get 'welcome/index'
  #get '/inicio', to: 'welcome#index'
  
  resources :coins
  
  #get '/coins', to: 'coins#index'
  
  root to: 'welcome#index'  # força aplicação abrir a pagina como principal index
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
