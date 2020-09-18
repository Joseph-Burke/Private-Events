Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create show]
  get 'sessions/new', to: 'sessions#new' 
  post 'sessions', to: 'sessions#create'
  delete 'sessions', to: 'sessions#destroy'
  # EventsController routes
  resources :events, only: [:new, :create, :show, :index]
  root to: 'events#index'
end
