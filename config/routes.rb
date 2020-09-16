Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create show]
  # 'post''session#create'
  # 'get''session#new'
  # 'get''session#destroy'
  get 'sessions/new', to: 'sessions#new' 
  post 'sessions', to: 'sessions#create'
  delete 'sessions', to: 'sessions#destroy'
  
end
