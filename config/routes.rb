Rails.application.routes.draw do
  get 'sessions/login'
  post 'sessions/login', to: 'sessions#login_attempt', as: '/login'
  # post 'sessions/loginattempt'
  delete 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  root 'users#index'

  resources :tasks
  resources :lists
end
