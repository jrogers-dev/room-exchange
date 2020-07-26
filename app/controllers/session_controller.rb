class SessionController < ApplicationController
    def new

    end

    def create
        @client = User.find_by(email: params[:email])
        if @client == nil
            @client = Owner.find_by(email: params[:email])
            if @client == nil
                redirect_to "/login"
            end
        end

        if @client.authenticate(params[:password])
            session[:email] = @client.email
            session[:type] = @client.class.name
            redirect_to "/dashboard"
        else
            redirect_to "/login"
        end
    end
end
