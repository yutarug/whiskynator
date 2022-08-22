Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "homes#top"
  get "searched_word",to:"tags#searched_word"

  get "admin_taste_edit",to:"tastes#admin_edit"
  get "admin_bottle_edit",to:"bottles#admin_edit"
  get "admin_area_edit",to:"areas#admin_edit"
  get "admin_tag_edit",to:"tags#admin_edit"
  # get "taste",to:"homes#taste"
  # get "area",to:"homes#area"
  # get "price",to:"homes#price"
  resources :tastes, :only=>[:index,:show,:edit,:update]
  resources :bottles, :only=>[:index,:show,:edit,:update]
  resources :areas, :only=>[:index,:show,:edit,:update]
  # resources :range_of_prices
  resources :matures, :only=>[:index,:show]
  resources :tags, :only=>[:show,:edit,:update]
end
