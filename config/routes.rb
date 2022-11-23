Rails.application.routes.draw do
  devise_for :managers
  root 'projects#index'
  get "/signout", to: "projects#signout"
  get "/profile", to: "projects#profile"
  resources 'projects'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
