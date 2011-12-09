class CategoriesController < ApplicationController

  def show
    @category = Type.find(params[:id])
    @search = @category.products.where("available = ?", true).search(params[:search])
    @category_products = @search.paginate(:page => params[:page], :per_page => 10)
  end

end
