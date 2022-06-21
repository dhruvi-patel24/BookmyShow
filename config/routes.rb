Rails.application.routes.draw do
  get 'notifications/messages:string'



  # get 'category/name:string'
  
  root "dummies#index"
  resources :homes
  resources :users do
    resources :show_bookings 
  end
  resources :dummies, :roles, :categories, :events, :cities, :locations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/show_bookings", to: "show_bookings#index", as: "show_bookings"
  get "/show_bookings/show", to: "show_bookings#show", as: "book_show"
  get "/locations/show", to: "locations#show", as: "show_locations"

end
