class CategoryController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    puts "create"

    # save all categories to the db
    @categories = Category.create(category_params)
  end

  def fetch_category 
    id = params[:category_id]

    # find the category with the specified id
    @category = Category.find(id)

    puts @category.slug
  end 

  def fetch_all 
    # fetch all categorie
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
