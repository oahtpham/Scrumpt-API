Rails.application.routes.draw do
  resources :comments, only: [:index, :create, :update]
  resources :users, only: [:index, :create, :update]
  resources :stories, only: [:index, :create, :update]
  resources :stages, only: [:index]
  resources :sprints, only: [:index, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
