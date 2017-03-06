Rails.application.routes.draw do

  # get 'dashboards/show'
  get "/dashboard", to: 'dashboards#show'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # get 'mood', to: 'pages#moodselector'
  # get "/dashboard", to: 'dashboards#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues, only: [:index, :new, :create, :show] do
    resources :favorites, only: :create
    resources :spots, only: :create
    resources :bookings, only: :create
    resources :reviews, only: :create
  end
  resources :favorites, only: [:destroy]
  resources :favorites, except: [:new, :create]

  mount Attachinary::Engine => "/attachinary"
end
