Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  resources :articles
  #READ ALL
  root to: "articles#list"

  #CREATE
  get "articles/new", to: "articles#new", as: :new_article
  post "articles", to: "articles#create"

  #READ ONE
  get "articles/:id", to: "articles#show", as: :article

  #UPDATE
  get "articles/:id/edit", to: "articles#edit", as: :edit_article
  patch "articles/:id", to: "articles#update"

  #DELETE
  delete "articles/:id", to: "articles#destroy"
end
