class StoreController < ApplicationController
  def index
    @search = Product.where("available = ?", true).search(params[:search])
    @store_products = @search.paginate(:page => params[:page], :per_page => 10)
  end
  def show
    @store_product = Product.find(params[:id])
   
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_product }
    end
  end
  def order_state
    time = Time.now - 1.day
    @corders = current_user.corders.where("created_at > ?", time)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @corders }
    end
   end
   def corders
    time = Time.now - 1.day
    @corders = current_user.corders.where("created_at > ?", time)
    respond_to do |format|
      format.html { render :layout => false }
      format.json { render json: @corders }
    end
  end
 end
