Rails.application.routes.draw do

  # get 'dashboards/show'
  get "/dashboard", to: 'dashboards#show'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get 'mood', to: 'pages#moodselector'
  # get "/dashboard", to: 'dashboards#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues, only: [:index, :new, :create, :show] do
    resources :favorites, only: :create
  end

  mount Attachinary::Engine => "/attachinary"
end
