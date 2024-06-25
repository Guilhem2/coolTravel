Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/show'
  get 'travels/index'
  get 'travels/show'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :travels, only: [:index, :show] do
    resources :reviews, only: [:index, :new, :create, :show]
  end
  resources :bookings
end
