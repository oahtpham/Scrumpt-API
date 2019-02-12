Rails.application.routes.draw do
  resources :comments, only: [:index, :create, :update]
  resources :users, only: [:index, :create, :update]
  resources :stories
  resources :stages, only: [:index]
  resources :sprints
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
