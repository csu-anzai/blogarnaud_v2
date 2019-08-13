Rails.application.routes.draw do
  # define homepgae
  root to: 'pages#home'
  # crud routes for tags
  resources :tags
  # crud routes for articles
  resources :articles
  # crud routes for readers
  resources :readers
  # route for profile
  get "/profile", to: 'pages#profile', as: "profile"
   # route for contact
  get "/contact", to: 'pages#contact', as: "contact"
end

