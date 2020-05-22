Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :new, :create, :update, :edit]
  resources :heroines, only: [:index, :show, :new, :create]  
end
