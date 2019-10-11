Rails.application.routes.draw do
  get 'secrets/show'

  get 'sessions/new'

  root 'application#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
