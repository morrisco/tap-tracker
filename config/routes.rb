TapTracker::Application.routes.draw do
  resources :users
  resources :kegs
  resources :pours

  root "pours#new"
end
