class ItemController < ApplicationController
  skip_before_action :verify_authenticity_token
  def fetch_all
    puts "not here"
    @items = Products.all
  end

  def fetch_item
    puts params[:item_id]
    @item = Item.find(params[:item_id])

    puts @item["item_name"]
  end

  def create
    puts "here"
    # @category = Categories.find_by(slug: params[:item])
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

  def fetch_by_category
    category_id = params[:category_id]
    @category = Category.find(category_id)
    @items = @category.items.all

    for item in @items 
      puts item.item_name
    end
  end

  private
  def item_params
    params.permit(item: [
      :item_name, 
      :stock_number, 
      :description, 
      :price, 
      :img_src,
      :category]).require(:item)
  end
end
