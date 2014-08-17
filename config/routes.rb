Rails.application.routes.draw do
  resources :videos, only: [:new, :index]
  root to 'videos#index'
end
