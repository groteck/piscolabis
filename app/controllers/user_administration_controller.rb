class UserAdministrationController < ApplicationController
   
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def edit
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(params[:id])

        respond_to do |format|
            if @user.save
                format.html { redirec_to @user }
                format.json { render json: @user, status: :created, location: @user }
            else
                format.html { render action: "new" }
                format.json {render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @user = User.find(params[:id])

        respond_to do |format|
            if @user.update_attributes(params[:user])
                format.html { redirect_to @user }
                format.json { head :ok }
            else
                format.html { render action: "edit" }
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        respond_to do |format|
            format.html { redirect_to types_url }
            format.json { head :ok }
        end
    end
end
