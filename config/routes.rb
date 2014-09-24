Rails.application.routes.draw do
  root to: 'roots#root'
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
