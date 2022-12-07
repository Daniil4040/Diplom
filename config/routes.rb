Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  resources :categories
  root "homes#index"
  resources :films
  get "/rating/", to: "rating#index"
  get "/contact/", to: "contact#index"
end