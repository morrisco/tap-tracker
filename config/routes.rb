TapTracker::Application.routes.draw do
  resources :users
  resources :kegs

  root "home#index"
end
