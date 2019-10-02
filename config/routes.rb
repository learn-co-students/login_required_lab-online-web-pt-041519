Rails.application.routes.draw do
  root 'application#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/home' => 'secrets#show' 
  get '/secret' => 'secrets#secret'
end
