Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: "admins/sessions",
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"



  # root "homes#top"
  # get "searched_word",to:"tags#searched_word"

  # get "admin_taste_edit",to:"tastes#admin_edit"
  # get "admin_bottle_edit",to:"bottles#admin_edit"
  # get "admin_area_edit",to:"areas#admin_edit"
  # get "admin_tag_edit",to:"tags#admin_edit"
  # # get "taste",to:"homes#taste"
  # # get "area",to:"homes#area"
  # # get "price",to:"homes#price"
  # resources :tastes, :only=>[:index,:show,:edit,:update]
  # resources :bottles, :only=>[:index,:show,:edit,:update]
  # resources :areas, :only=>[:index,:show,:edit,:update]
  # # resources :range_of_prices
  # resources :matures, :only=>[:index,:show]
  # resources :tags, :only=>[:show,:edit,:update]
  root "publics/homes#top"
  namespace :admins do
    resources :bottles, only:[:index,:create,:edit,:update,:destroy]
    resources :areas, only:[:index,:create,:edit,:update,:destroy]
    resources :tastes, only:[:index,:create,:edit,:update,:destroy]
    resources :tags, only:[:index,:create,:edit,:update,:destroy]
    resources :matures, only:[:index,:create,:edit,:update,:destroy]
    resources :recommendation_bottles, only:[:create,:destroy]
    resources :bottle_tags, only:[:create,:destroy]
    resources :bottle_tastes, only:[:create,:destroy]
    get "top",to:"homes#top"
  end

  scope module: :publics do
    resources :bottles, only:[:index,:show]
    resources :areas, only:[:index,:show]
    resources :tastes, only:[:index,:show]
    resources :tags, only:[:index,:show]
    resources :matures, only:[:index,:show]
    resources :bottles, only:[:index,:show]
    get "searched_word",to:"tags#searched_word"
  end


end
