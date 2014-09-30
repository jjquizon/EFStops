Rails.application.routes.draw do
  root to: 'staticpages#root'
  get '/home', to: 'staticpages#intro', as: :home
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :index, :update]
  get '/users/:id/feed', to: 'users#feed'
  get '/images/page', to:  'images#index'
  resources :images, only: [:create, :show]
  resources :albums, only: [:index, :create, :show]
  resources :comments, only: [:create, :update, :show]
  resources :favorites, only: [:create, :destroy, :index]
  resources :follows, only: [:create, :destroy, :index]
end
