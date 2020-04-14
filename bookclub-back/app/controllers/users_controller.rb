class UsersController < ApplicationController
    # before_action :authenticate_user!

    def index 
        users = User.all 
        render json: users
    end
    
    def show
        @user = User.find(params[:id])
    end

    private

    def user_params
      params.require(:email_address).permit(:first_name, :last_name)
    end

end
