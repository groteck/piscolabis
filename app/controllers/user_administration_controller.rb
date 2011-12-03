class UserAdministrationController < ApplicationController
   
    def index
        @users = User.all
=begin
             respond_to do |format|
             format.html # index.html.erb
             format.json { render json: @users }
        end
=end

    end

    def show
        @my_user = User.find(params[:id])
    end
    def edit
        @my_user = User.find(params[:id])
    end

    def update
        @my_user = User.find(params[:id])
        @my_user.update_attributes(params[:user])
=begin
        respond_to do |format|
            if @user.update_attributes(params[:user])
                format.html { redirect_to @user }
                format.json { head :ok }
            else
                format.html { render action: "edit" }
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
=end
    end

    def destroy
        @my_user = User.find(params[:id])
        @my_user.destroy
=begin
        respond_to do |format|
            format.html { redirect_to user_administration_url }
            format.json { head :ok }
        end
=end
    end
end
