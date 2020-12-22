Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "hello_world", to: 'application#hello_world'
  get "owners", to: 'owners#index'
  get "properties", to: 'properties#index'
  
  # resources :owners, only:[:index]
  # resources :properties, only:[:index]
end
