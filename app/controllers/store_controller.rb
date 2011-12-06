class StoreController < ApplicationController
  def index
    @search = Product.search(params[:search])
    @store_products = @search.paginate(:page => params[:page], :per_page => 10)
  end
  def show
    @store_product = Product.find(params[:id])
   
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_product }
    end
  end
end
