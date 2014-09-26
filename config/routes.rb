Rails.application.routes.draw do
  root to: 'staticpages#root'
  get '/home', to: 'staticpages#intro', as: :home
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :index]
  resources :images, only: [:index, :create, :show]
  resources :albums, only: [:index, :create, :show]
end
