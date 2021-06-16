Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/personality_test', to: 'personalities#index', as: :personality_test
  get '/personality', to: 'personalities#show'
  post '/personality', to: 'personalities#create'
  # Wicked wizard

  resources :create_team, only: [ :show, :update, :create ]
  resources :teams, only: [ :index, :new, :create ] do
    resources :questions, only: :index

    resources :users, only: :show
    resources :memberships, only: :create

    member do
      post '/questions', to: 'user_answers#create', as: :user_answers
      get :status, :show
    end
  end

  resources :memberships, only: [ :update, :destroy ]
end
