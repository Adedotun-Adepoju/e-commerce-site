class ItemController < ApplicationController
  skip_before_action :verify_authenticity_token
  def fetch_all
    puts "not here"
    # @items = Products.all
  end

  def fetch_item
    puts params[:item_id]
    # @item = Items.find(params[:item_id])
  end

  def create
    # item = Item.new(params[:item])
    # @category = Categories.find_by(slug: params[:item])
    puts params
    # @item
  end

  private
  def item_params
    params.permit(:item_name, :stock_number, :description, :price, :category)
  end
end
