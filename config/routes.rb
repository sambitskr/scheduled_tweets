# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
# Can be used by load balancers and uptime monitors to verify that the app is live.



Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  delete "logout", to: "sessions#destroy"

  get "about", to: "about#index"
  # get "about-us", to: "about#index", as: :about 

  # get "/", to: "main#index" can also be written like below
  root to: "main#index"
  
end
