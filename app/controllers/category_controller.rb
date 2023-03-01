class CategoryController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    puts "create"

    @categories = Category.create(category_params)
  end

  def fetch_category 
    puts params[:category_id]
  end 

  def fetch_all 
    puts "fetch_all"
  end

  private 
  def category_params
    params.permit(category: [
      :category_name, 
      :slug, 
      :description, 
      :img_src ]).require(:category)
  end
end
