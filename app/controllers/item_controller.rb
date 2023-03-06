class ItemController < ApplicationController
  skip_before_action :verify_authenticity_token
  def fetch_all
    @items = Item.all
  end

  def fetch_item
    @item = Item.find(params[:item_id])
  end

  def create
    for item in item_params
      category_slug = item[:category]
      @category = Category.find_by(slug: category_slug)
      item.delete(:category)
      @category.items.create(item)
    end
  end

  def fetch_all 
    @items = Item.all
  end

  def show_category_items
    category_id = params[:category_id]
    @category = Category.find(category_id)
    @items = @category.items.all

    render "items_category"

    for item in @items 
      puts item.item_name
    end
  end

  def show_item 
    item_id = params[:item_id]
    @item = Item.find(item_id)

    render "show_item"
  end

  def fetch_by_carts
    cart_id = params[:cart_id]
    @cart = Cart.find(cart_id)
    @items = @cart.items_by_cart.all 

    for item in @items 
      puts item.item_name
    end
  end 

  def add_item_to_cart
    cart_id = params[:cart_id]
    @cart = Cart.find(cart_id)
    @cart.items_by_carts.create(cart_item)
  end

  private
  def item_params
    params.permit(item: [
      :item_name, 
      :stock_number, 
      :description, 
      :price, 
      :image_src,
      :category]).require(:item)
  end

  def cart_item 
    params.permit(item: [
      :item_id ,
      :quantity
    ]).require(:item)
  end
end
