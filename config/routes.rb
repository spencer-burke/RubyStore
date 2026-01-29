Rails.application.routes.draw do
  get "sign_ups/show"
  get "unsubscribes/only"
  get "unsubscribes/show"
  get "subscribers/create"
  resource :session
  resources :passwords, param: :token
  resource :sign_up
  get "up" => "rails/health#show", as: :rails_health_check

  root "products#index"
  resources :products do
    resources :subscribers, only: [ :create ]
  end
  resource :unsubscribe, only: [ :show ]
end
