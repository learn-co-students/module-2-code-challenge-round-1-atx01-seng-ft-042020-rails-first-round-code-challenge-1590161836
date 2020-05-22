Rails.application.routes.draw do
  resources :powers, only: [:index]
  resources :heroines, only: [:index]

  get '/heroines' => 'heroines#index'
  post '/heroines' => 'heroines#create'
  get '/heroine/new' => 'heroines#new', as: 'new_heroine'
  get '/heroines/:id' => 'heroines#show', as: 'heroine'
  
  get '/powers' => 'powers#index'
  get 'powers/:id' => 'powers#show', as: 'power'
end
