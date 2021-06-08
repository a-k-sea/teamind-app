Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Wicked wizard
  resources :create_team, only: :show
  resources :teams, only: [ :index, :new, :create ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
