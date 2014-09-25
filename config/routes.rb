Rails.application.routes.draw do
  get 'albums/index'

  get 'albums/show'

  get 'albums/create'

  get 'albums/destroy'

  root to: 'staticpages#root'
  get '/home', to: 'staticpages#intro', as: :home
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :images, only: [:index, :create, :show]
end
