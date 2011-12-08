class ProductsController < ApplicationController
  before_filter :current_user_admin
  # GET /products
  # GET /products.json
  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    if params[:product][:image_url] == ""
       params[:product][:image_url] = "nodisponible.jpg"
    end
    if params[:product][:price] == ""
        params[:product][:price] = 0.00
    end
    params[:product][:price] = Sanitize.clean(params[:product][:price], Sanitize::Config::RELAXED)

    @product = Product.new(params[:product])
  
    respond_to do |format|
      if @product.save
        if params[:delete_file] == "1"
          @product.image = nil
          @product.save
        end

        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])
    if params[:product][:image_url] == ""
      params[:product][:image_url] = "nodisponible.jpg"
    end

    params[:product][:price] = Sanitize.clean(params[:product][:price], Sanitize::Config::RELAXED)
    respond_to do |format|
      if @product.update_attributes(params[:product])
        if params[:delete_file] == "1" or params[:product][:image_url] != "nodisponible.jpg"  
           @product.image = nil
           @product.save
        end 
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :ok }
    end
  end
end
