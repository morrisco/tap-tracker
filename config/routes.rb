TapTracker::Application.routes.draw do
  resources :users
  resources :kegs
  resources :pours

  root "home#index"
end
