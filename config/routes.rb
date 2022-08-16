Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "homes#top"
  get "searched_word",to:"tags#searched_word"
  # get "taste",to:"homes#taste"
  # get "area",to:"homes#area"
  # get "price",to:"homes#price"
  resources :tastes, :only=>[:index,:show]
  resources :bottles, :only=>[:index,:show]
  resources :areas, :only=>[:index,:show]
  # resources :range_of_prices
  resources :matures, :only=>[:index,:show]
  resources :tags, :only=>:show
end
