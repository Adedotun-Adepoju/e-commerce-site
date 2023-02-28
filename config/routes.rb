  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  
  # category routes
  post '/category/add', to: 'category#create'                   # Create category
  get  '/category/:category_id', to "category#fetch_category"   # fetch one category
  get  '/categories', to "category#fetch_all"                   # fetch all categories

  # Item routes
  get '/items', to: 'item#index'                 # fetch all items
  get '/item/:item_id', to: "item#fetch_item"   # Fetch one item
  post "/item", to: "item#create"                # Create new item

end
