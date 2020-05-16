Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  get "/", to: "pages#home", as: "root"
  get "/about", to: "pages#about", as: "about"
  get "/help", to: "pages#help", as: "help"

  get "/listings", to: "listings#index", as: "listings"
  post "/listings", to: "listings#create"
  get "/listings/new", to: "listings#new", as: "new_listing"
  get "/listings/:id", to: "listings#show", as: "listing"
  get "/listings/:id/edit", to: "listings#edit", as: "edit_listing"

  put "/listings/", to: "listings#favourite", as: "favourite_listing"
  patch "/listings/:id", to: "listings#update"
  put "/listings/:id", to: "listings#update"
  delete "/listings/:id", to: "listings#destroy"

  get "/users/:id", to: "users#show", as: "user_profile"
  get "/users/:id/favourites", to: "users#favourites", as: "user_favourites"
  get "/users/:id/purchases", to: "users#purchases", as: "user_purchases"
  get "/users/:id/listings", to: "users#listings", as: "user_listings"

  get "/payments/success", to: "payments#success"
  post "/payments/webhook", to: "payments#webhook"
  #If path is invalid redirect to root
  # get "*path", to: redirect("/")
end
