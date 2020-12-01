Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'tasks/index'
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/create'

  get 'tasks#index', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :tasks, only:[:index, :show, :new, :create]
end
