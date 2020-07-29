class FavoritesController < ApplicationController
    def index
        @favorites = Favorite.all
    end
    
    def create
        print params
        @favorite = Favorite.new(favorite_params)
        @favorite.save
    end

    private

    def favorite_params
        params.permit(:user_id, :post_id)
    end
end
