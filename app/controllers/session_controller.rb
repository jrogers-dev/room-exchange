class SessionController < ApplicationController
    def new

    end

    def create
        @client = User.find_by(email: params[:email])
        if @client = nil
            @client = Owner.find_by(email: params[:email])
            if @client = nil
                render :new
            end
        end

        if @client.authenticate(params[:password])
            session[:email] = @client.email
            redirect_to "/dashboard"
        else
            render :new
        end
    end
end
