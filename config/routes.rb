Rails.application.routes.draw do
  devise_for :users
  get "/", to: "pages#home", as: "root"
  get "about", to: "pages#about", as: "about"
  get "help", to: "pages#help", as: "help"
  get "listings", to: "listings#index", as: "listings"
  post "listings", to: "listings#create"
  get "listings/new", to: "listings#new", as: "new_listing"
  get "listings/:id", to: "listings#show", as: "listing"
  get "listings/:id/edit", to: "listings#edit", as: "edit_listing"

  patch "/listings/:id", to: "listings#update"
  put "/listings/:id", to: "listings#update"
  delete "/listings/:id", to: "listings#destroy"
end
