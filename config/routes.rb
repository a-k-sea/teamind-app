Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Wicked wizard

  resources :create_team, only: [ :show, :update, :create ]
  resources :teams, only: [ :index, :new, :create ] do
    resources :questions, only: :index
    member do
      get :status, :show
    end
    resources :questions, only: [:index]
  end
    # resources :answers, only: [ :create ]

  resources :memberships, only: :update

  resources :user_answers, only: :create

  # resources :questions, only: [:index, :new] do
  #   resources :answers, only: [ :create ]
  # end

end
