Rails.application.routes.draw do
  get 'entreprises/index'
  get 'entreprises/show'
  get 'entreprises/new'
  get 'entreprises/create'
  get 'entreprises/edit'
  get 'entreprises/update'
  get 'entreprises/destroy'
  # define homepage
  root to: 'pages#home'
  # crud routes for tags
  resources :tags
  # crud routes for articles
  resources :articles
  # crud routes for entreprises
  resources :entreprises
  # crud routes for readers
  resources :readers
  # route for positive impact page
  get "/positive-impact", to: 'pages#positive-impact', as: "positiveimpact"
  # route for profile
  get "/profile", to: 'pages#profile', as: "profile"
  # route for contact
  get "/contact", to: 'pages#contact', as: "contact"
  # route for admin
  get "/admin", to: 'admins#admin', as: "admin"
end

