Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resource :sign_up
  get "up" => "rails/health#show", as: :rails_health_check

  root "products#index"

  resources :products do
    resources :subscribers, only: [ :create ]
  end

  resource :unsubscribe, only: [ :show ]

  namespace :settings do
    resource :password, only: [ :show, :update ]
    resource :profile, only: [ :show, :update ]
    resource :user, only: [ :show, :destroy ]

    root to: redirect("/settings/profile")
  end
end
