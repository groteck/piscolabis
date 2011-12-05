class CordersController < ApplicationController
  before_filter :authenticate_user!, :only => [ :show, :create, :new ]
  before_filter :current_user_cooker, :only => [ :cocinero, :update, :destroy ]
  # GET /orders
  # GET /orders.json
  def index
    @corders = Corder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @corders }
    end
  end
  def cocinero
    @corders = Corder.where(:finished => false).all

    respond_to do |format|
      format.html # cocinero.html.erb
      format.json { render json: @corders }
    end
  end

  def show
    @corder = Corder.find(params[:id])
  end
  # GET /orders/new
  # GET /orders/new.json
  def new
    @corder = Corder.new
   
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @corder }
    end
  end

  # POST /orders
  # POST /orders.json
  def create
    @corder = Corder.new(:finished => 0,:user_id => current_user, :order_id => session[:order_id])
    
      respond_to do |format|
      if @corder.save
      session[:order_id] = nil
     
        format.html { redirect_to @corder, notice: 'Order was successfully created.' }
        format.json { render json: @corder, status: :created, location: @corder }
      else
        format.html { render action: "new" }
        format.json { render json: @corder.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    @corder = Corder.find(params[:id])
    respond_to do |format|
      if @corder.update_attributes(:finished => true)
        format.html { redirect_to @corder, notice: 'Order was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
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
