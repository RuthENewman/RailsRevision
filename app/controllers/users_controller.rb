class UsersController < ApplicationController
    before_action :set_user, only: [:show, :destroy, :edit, :update]

    def index 
        @users = User.all 
    end

    def show
    end 

    def new 
        @user = User.new
    end 

    def destroy
        if @user
            @user.destroy
        else 
            
        end
    end

    private

    def set_user
        @user = User.find(params[:id])
    end


end
