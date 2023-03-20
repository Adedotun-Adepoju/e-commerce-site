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
  post '/category/add', to: 'category#create'                                             
  get  '/category/:category_id', to: "category#fetch_category"                             
  get  '/categories', to: "category#fetch_all"                                              

  # Item routes
  get '/item/:item_id', to: "item#show_item", as: "show_item"     
  post "/item", to: "item#create"                                                             
  get '/item/category/:category_id', to: "item#show_category_items", as: 'category_items'     
  get '/search/item', to: "item#search"
  get '/view_cart', to: "item#fetch_by_carts", as: "fetch_cart"                                
  post 'item/cart', to: "item#add_item_to_cart"                                                

  post 'audio/upload', to: "audio#upload_audio"
end
