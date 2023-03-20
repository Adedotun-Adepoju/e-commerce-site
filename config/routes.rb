  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # Root
  root to: "main#index"

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
  get '/items', to: 'item#index'                                  # fetch all items
  get '/item/:item_id', to: "item#show_item", as: "show_item"     
  post "/item", to: "item#create"                                 # Create new item
  get '/item/category/:category_id', to: "item#show_category_items", as: 'category_items'     # fetch items by category
  get '/search/item', to: "item#search"
  get '/view_cart', to: "item#fetch_by_carts", as: "fetch_cart"               # fetch items by cart
  post 'item/cart', to: "item#add_item_to_cart"                               # Add item to a cart

  get 'items/test', to: "main#show"

  post 'audio/upload', to: "audio#upload_audio"
end
