Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "hello_world", to: 'application#hello_world'
  
  post '/signup', to: 'registrations#signup'  
  post '/login', to: 'sessions#login'
  post '/send_mail', to: 'registrations#sendMail'

  delete '/logout', to: 'sessions#logout'
  get '/logged_in', to: 'sessions#logged_in?'

  resources :owners
  resources :properties
  resources :posts
  resources :registrations
  resources :sessions


end
