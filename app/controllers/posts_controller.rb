class PostsController < ApplicationController
    def new

    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to post_path(@post)
        else
            render :new
        end
    end

    private
    
    def post_params
        params.require(:post).permit(
            :title,
            :content,
            :zipcode,
            :rent,
            :rooms_in_house,
            :size,
            :private_bathroom,
            :private_entrance,
            :cats,
            :dogs,
            :pet_rent,
            :tenants,
            :gender_preference,
            :image1,
            :image2,
            :image3,
            :image4,
            :image5,
            :image6,
            :image7,
            :image8,
            :image9,
            :image10,
            :image11,
            :image12,
            :image13,
            :image14,
            :image15
        )
    end
end
