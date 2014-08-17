Rails.application.routes.draw do
  resources :videos, only: [:new, :index]
  root to: 'videos#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#fail'
end
