  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # Root
  root to: "main#index"

  # about 
  get "/about", to: "about#index"

  # sign-in 
  get "/sign_in", to: "sessions#new"
  post "/sign_in", to: "sessions#create"

  # sign-out 
  delete "/sign_out", to: "sessions#destroy"
  
  # category routes
  post '/category/add', to: 'category#create'                   # Create category
  get  '/category/:category_id', to: "category#fetch_category"   # fetch one category
  get  '/categories', to: "category#fetch_all"                   # fetch all categories

  # Item routes
  get '/items', to: 'item#index'                 # fetch all items
  get '/item/:item_id', to: "item#fetch_item"   # Fetch one item
  post "/item", to: "item#create"                # Create new item

end
