class CategoriesController < ApplicationController

  def show
    @category = Type.find(params[:id])
  end

end
