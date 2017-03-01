Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount Attachinary::Engine => "/attachinary"

  root to: 'pages#home'
  get 'mood', to: 'pages#moodselector'
  # get "/dashboard", to: 'dashboards#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues, only: [:index, :new, :create, :show] do
    resources :favorites, only: :create
  end
  resources :favorites, except: [:new, :create]
end
