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
    end

    def update
        @user = User.find(params[:id])
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

end
