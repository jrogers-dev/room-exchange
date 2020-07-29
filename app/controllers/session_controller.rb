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
            session[:type] = @client.class.name.downcase
            redirect_to "/#{session[:type]}s/dashboard"
        else
            redirect_to "/login"
        end
    end

    def destroy
        session.clear
        redirect_to "/login"
    end
end
