Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  resources :categories
  root "homes#index"
  resources :films do
    resources :comments 
  end
  get "/rating/", to: "rating#index"
  resources :contacts
  resources :events
  resources :news
  get "/search/", to: "search#index"
end