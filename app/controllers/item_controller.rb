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
    # cart_id = params[:cart_id]
    # @cart = Cart.find(cart_id)

    @cart = Current.customer.cart
    cart_items = @cart.items_by_carts 
    items_id = cart_items.map { |product| product.item_id }
    
    distinct_items_id = Set.new(items_id).to_a
    @items = Item.where(id: distinct_items_id)

  end 

  def add_item_to_cart
    item_id = params[:item_id]
    item = Item.find(item_id)
    customer_id = Current.customer.id
    cart = Current.customer.cart
    quantity = 1
    cart.items_by_carts.create(
      item_id: item_id,
      quantity: quantity,
    )

    total = cart.sub_total.to_f + item.price.to_f

    cart.update(
      sub_total: total
    )

  end

  def search 
    @key = params[:key].downcase()
    key = "%#{@key}%"
    @items = Item.where("LOWER(item_name)LIKE ?", key)

    render "search"
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
