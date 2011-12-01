class CategoriesController < ApplicationController
  def index
    @categories = Type.all
  end

  def show
    @category = Type.find(params[:id])
  end

end
