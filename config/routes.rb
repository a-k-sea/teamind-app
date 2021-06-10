Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Wicked wizard

  resources :create_team, only: [ :show, :update, :create ]
  resources :teams, only: [ :index, :new, :create ] do
    member do
      get :status, :show
    end
    resources :questions, only: [:index]
  end
    # resources :answers, only: [ :create ]

end
