class UserAdministrationController < ApplicationController
    before_filter :current_user_admin
    def index
        @users = User.all
             respond_to do |format|
             format.html # index.html.erb
             format.json { render json: @users }
        end
    end

    def show
        @my_user = User.find(params[:id])
     respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @my_user }
    end

    end

    def edit
        @my_user = User.find(params[:id])
    end
    def update
           @my_user = User.find(params[:id])

            respond_to do |format|
            if @my_user.update_attribute(:ugroupe_id,params[:user][:ugroupe_id])
                format.html { redirect_to user_administration_path }
                format.json { head :ok }
            else
                format.html { render action: "edit" }
                 format.json { render json: @my_user.errors, status: :unprocessable_entity }
            end
            end
    end

    def destroy
        @my_user = User.find(params[:id])
        respond_to do |format|
            format.html { redirect_to user_administration_url }
            format.json { head :ok }
        end
    end
end
