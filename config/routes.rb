Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :spaces do
    resources :bookings
  end
  resources :profiles, only: [:show]
  get "/my_profile", to: "profiles#my_profile", as: "my_profile"
end
