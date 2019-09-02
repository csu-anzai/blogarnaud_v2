Rails.application.routes.draw do
  # routes for users via devise
  devise_for :users

  #define scope for i18n
  scope '(:locale)', locale: /en/ do
    # define homepage
    root to: 'pages#home'
    # crud routes for tags
    resources :tags, except: [:index, :show]
    # crud routes for articles
    resources :articles
    # crud routes for entreprises
    resources :entreprises
    # crud routes for readers
    resources :readers, except: [:index, :show, :edit, :update, :destroy]
    # route for positive impact page
    get "/positive-impact", to: 'pages#positive-impact', as: "positiveimpact"
    # route for profile
    get "/profile", to: 'pages#profile', as: "profile"
    # route for contact
    get "/contact", to: 'pages#contact', as: "contact"
    # route for search
    get "/search", to: 'pages#search', as: "search"
    # route for admin
    get "/admin", to: 'admins#admin', as: "admin"
    # route for admin articles
    get "/admin_articles", to: 'admins#articles', as: "admin_articles"
    # route for admin entreprises
    get "/admin_entreprises", to: 'admins#entreprises', as: "admin_entreprises"
    # route for admin tags
    get "/admin_tags", to: 'admins#tags', as: "admin_tags"
    # route for admin contacts
    get "/admin_contacts", to: 'admins#contacts', as: "admin_contacts"
  end
end

