Rails.application.routes.draw do

  get 'venues/index'

  get 'venues/show'

  get 'venues/new'

  get 'venues/create'

  get 'venues/edit'

  get 'venues/update'

  get 'venues/destroy'

  get 'index/show'

  get 'index/new'

  get 'index/create'

  get 'index/edit'

  get 'index/update'

  get 'index/destroy'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get 'favorites/index'

  get 'favorites/show'

  get 'favorites/new'

  get 'favorites/create'

  get 'favorites/edit'

  get 'favorites/update'

  get 'favorites/destroy'
  

  root to: 'pages#home'
  # get "/dashboard", to: 'dashboards#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues, only: [:index, :show] do
    resources :favorites, only: :create
  end
  resources :favorites, except: [:new, :create]
end
