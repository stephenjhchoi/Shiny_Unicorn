Rails.application.routes.draw do

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
