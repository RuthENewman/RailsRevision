class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy, :edit, :update]

    def index 
        @users = User.all 
    end

    def show
    end 

    def new 
        @user = User.new
    end 

    def create
        @user = User.create(user_params)
        if @user.valid?
            redirect_to @user
        else
            render 'new'
        end 
    end

    def edit
    end

    def update
        if @user.update(user_params)
            redirect_to @user
        else 
            render 'edit'
        end
    end

    def destroy
        if @user
            @user.destroy
        end
        redirect_to users_path
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.requre(user).permit(:first_name, :last_name, :email)
    end

end
