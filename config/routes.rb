Rails.application.routes.draw do
  devise_for :users
  resources :rooms

  get "home/links"

  root "home#links"
end
