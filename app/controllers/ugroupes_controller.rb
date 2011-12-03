class UgroupesController < ApplicationController
    before_filter :current_user_admin
  # GET /ugroupes
  # GET /ugroupes.json
  def index
    @ugroupes = Ugroupe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ugroupes }
    end
  end

  # GET /ugroupes/1
  # GET /ugroupes/1.json
  def show
    @ugroupe = Ugroupe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ugroupe }
    end
  end

  # GET /ugroupes/new
  # GET /ugroupes/new.json
  def new
    @ugroupe = Ugroupe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ugroupe }
    end
  end

  # GET /ugroupes/1/edit
  def edit
    @ugroupe = Ugroupe.find(params[:id])
  end

  # POST /ugroupes
  # POST /ugroupes.json
  def create
    @ugroupe = Ugroupe.new(params[:ugroupe])

    respond_to do |format|
      if @ugroupe.save
        format.html { redirect_to @ugroupe, notice: 'Ugroupe was successfully created.' }
        format.json { render json: @ugroupe, status: :created, location: @ugroupe }
      else
        format.html { render action: "new" }
        format.json { render json: @ugroupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ugroupes/1
  # PUT /ugroupes/1.json
  def update
    @ugroupe = Ugroupe.find(params[:id])

    respond_to do |format|
      if @ugroupe.update_attributes(params[:ugroupe])
        format.html { redirect_to @ugroupe, notice: 'Ugroupe was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @ugroupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ugroupes/1
  # DELETE /ugroupes/1.json
  def destroy
    @ugroupe = Ugroupe.find(params[:id])
    @ugroupe.destroy

    respond_to do |format|
      format.html { redirect_to ugroupes_url }
      format.json { head :ok }
    end
  end
end
