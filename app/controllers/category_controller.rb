class CategoryController < ApplicationController
  skip_before_action :verify_authenticity_token
  # action to add new category
  def create
    # save all categories to the db
    @categories = Category.create(category_params)
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
