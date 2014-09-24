Rails.application.routes.draw do
  root to: 'staticpages#root'
  get '/home', to: 'staticpages#intro', as: :home
  get '/filepicker', to: 'staticpages#filepicker', as: :filepicker
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :images, only: [:new, :create, :show]
end
