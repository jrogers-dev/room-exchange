class FavoritesController < ApplicationController
        belongs_to :user
        has_one :post
end
