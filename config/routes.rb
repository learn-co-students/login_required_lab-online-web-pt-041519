Rails.application.routes.draw do
  resources :sessions
  root to: 'application#homepage'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#destroy'
  get '/secret' => 'secrets#show'
end

