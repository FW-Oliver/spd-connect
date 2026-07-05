Rails.application.routes.draw do
  root "home#index"

  get "/or", to: "or#index"
  get "/spd", to: "spd#index"
  resources :products
end
