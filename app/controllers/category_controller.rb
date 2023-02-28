class CategoryController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    puts "create"
  end

  def fetch_category 
    puts params[:category_id]
  end 

  def fetch_all 
    puts "fetch_all"
  end
end
