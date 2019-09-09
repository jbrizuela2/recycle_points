Rails.application.routes.draw do
  devise_for :users

  resources :recycle_points
  resources :materials, except: [:show]

  root to: "main#index"
end
