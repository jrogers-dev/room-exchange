class OwnersController < ApplicationController
    def new

    end
    
    def create 
        @owner = Owner.new(owner_params)
        if @owner.save
            redirect_to "/login"
        else
            render :new
        end
    end

    private

    def owner_params
        params.require(:owner).permit(:email, :password)
    end
end
