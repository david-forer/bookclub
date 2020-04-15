class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy, :create]

    def index 
        users = User.all 
        render json: users
    end
    
    def show
        render json: @user
        
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:email_address).permit(:first_name, :last_name)
    end

end
