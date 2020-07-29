class UsersController < ApplicationController
    def new

    end
    
    def create 
        @user = User.new(user_params)
        if @user.save
            redirect_to "/login"
        else
            render :new
        end
    end

    def show
        @user = User.find_by(email: session[:email])
    end

    private

    def user_params
        params.require(:user).permit(:email, :password)
    end
end
