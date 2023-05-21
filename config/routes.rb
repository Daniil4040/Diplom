Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  resources :categories
  root "homes#index"
  resources :films do
    resources :comments 
  end
  get "/rating/", to: "rating#index"
  resources :contacts
  resources :events
  resources :users
  get "/search/", to: "search#index"
  get "/auth/", to:"users#get_auth"
  post "/auth/", to:"users#set_auth"
  get "/code/", to:"users#check_code"
  get '/patients/:id', to: 'patients#show'
end