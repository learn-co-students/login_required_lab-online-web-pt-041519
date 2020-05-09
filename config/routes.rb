Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'sessions#index', as: 'root'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/login', to: 'sessions#destroy', as: 'logout'
  get '/secrets', to: 'secrets#show', as: 'secret'
end
