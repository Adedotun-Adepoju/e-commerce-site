  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # Root
  root to: "main#index"

  # about 
  get "/about", to: "about#index"

  # sign-in 
  post "/sign_in", to: "registration#index"
end
