Rails.application.routes.draw do
  get 'surveys/new'
  get 'surveys/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'surveys#new'
  resources :surveys, only: [:new, :create]
  get 'thank_you', to: 'surveys#thank_you', as: 'thank_you' # 追加
  
end
