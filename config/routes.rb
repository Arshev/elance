Rails.application.routes.draw do
  
  devise_for :users
  resources :categories
  resources :gigs, shallow: true
  root 'gigs#index'
end
