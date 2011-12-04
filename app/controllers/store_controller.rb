class StoreController < ApplicationController
  def index
    @search = Product.search(params[:search])
    @store_products = @search.all
    @categories = Type.all
  end
  def show
    @store_product = Product.find(params[:id])
    @categories= Type.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_product }
    end
  end
end
