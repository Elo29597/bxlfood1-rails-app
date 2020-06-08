Rails.application.routes.draw do




  get '/index' => 'users#index'
  post '/' => 'admin#admin'

  post '/users' => 'users#create'
  get '/restaurants' => 'restaurants#index'

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'home', to: 'pages#home'


  get 'admin', to: 'admin#admin'
    get "admin/new", to: "admin#new", as: :new_place
    get "admin/:id", to: "admin#show", as: :show
    get "admin/:id/edit", to: "admin#edit", as: :edit
    delete "admin/:id", to: "admin#destroy"


  get "restaurants", to: "restaurants#index"

  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  post "restaurants", to: "restaurants#create"

  # NB: The `show` route needs to be *after* `new` route.
  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  patch "restaurants/:id", to: "restaurants#update"

  delete "restaurants/:id", to: "restaurants#destroy"


end
