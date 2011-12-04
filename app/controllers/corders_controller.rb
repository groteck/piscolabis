class CordersController < ApplicationController
  before_filter :authenticate_user!
  # GET /orders
  # GET /orders.json
  def index
    @orders = Corder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @corders }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    @order = Corder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @corder }
    end
  end

  # POST /orders
  # POST /orders.json
  def create
    params[:corder][:user_id] = current_user.id
    params[:corder][:order_id] = current_order.id
    @corder = Corder.new(params[:corder])
    session[:order_id] = nil
    respond_to do |format|
      if @order.save
        format.html { redirect_to @corder, notice: 'Order was successfully created.' }
        format.json { render json: @corder, status: :created, location: @corder }
      else
        format.html { render action: "new" }
        format.json { render json: @corder.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @corder = Corder.find(params[:id])
    @corder.destroy

    respond_to do |format|
      format.html { redirect_to root_url,notice: 'order whitout products' }
      format.json { head :ok }
    end
  end
end
