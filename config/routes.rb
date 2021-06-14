Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Wicked wizard

  resources :create_team, only: [ :show, :update, :create ]
  resources :teams, only: [ :index, :new, :create ] do
    resources :questions, only: :index
    member do
      post '/questions', to: 'user_answers#create', as: :user_answers
      get :status, :show
    end
  end
    # resources :answers, only: [ :create ]

  resources :memberships, only: :update

  # resources :user_answers, only: :create

end
