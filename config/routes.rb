Rails.application.routes.draw do
  devise_for :users
  get "/", to: "home#index", as: "root"
end
