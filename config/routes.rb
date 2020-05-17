Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

   get "restaurants" => "restaurants#index"

 get "restaurants/:id", to: "restaurants#show", as: :restaurant

     get "restaurants/new", to: "restaurants#new"
     # The `new` route needs to be *before* `show` route.
     post "restaurants", to: "restaurants#create"

     get "restaurants/:id/edit", to: "restaurants#edit"
     patch "restaurants/:id", to: "restaurants#update"
      delete "restaurants/:id", to: "restaurants#destroy"
end

