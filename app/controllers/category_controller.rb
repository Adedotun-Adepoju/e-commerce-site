class CategoryController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    puts "create"

    @categories = Category.create(category_params)
  end

  def fetch_category 
    id = params[:category_id]
    @category = Category.find(id)

    puts @category.slug
  end 

  def fetch_all 
    puts "here"
    @categories = Category.all 
    
    for category in @categories
      puts category.slug
    end
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
