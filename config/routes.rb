Rails.application.routes.draw do
  devise_for :users
  
  resources :recycle_points

  root to: "main#index"
end
